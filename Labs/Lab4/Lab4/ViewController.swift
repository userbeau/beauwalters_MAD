//
//  ViewController.swift
//  Lab4
//
//  Created by Beau Walters on 10/2/19.
//  Copyright © 2019 Beau Walters. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var drinkPrice: UITextField!
    @IBOutlet weak var drinkStepper: UIStepper!
    @IBOutlet weak var drinkLabel: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBAction func updateDrinks(_ sender: UIStepper) {
        if drinkStepper.value == 1 {
            drinkLabel.text = "1 drink"
        }else if drinkStepper.value == 0{
            let alert = UIAlertController(title: "Hey!", message: "C'mon, have a drink", preferredStyle: UIAlertController.Style.alert)
            let cancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(cancel)
            let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in
                self.drinkStepper.value = 1
                self.drinkLabel.text? = "1 drink"
                self.calcPrice()
            })
            alert.addAction(ok)
            present(alert, animated: true, completion:  nil)
        }else {
            drinkLabel.text = String(format: "%.0f", drinkStepper.value) + " drinks"
        }
        calcPrice()
    }
    override func viewDidLoad() {
        drinkPrice.delegate=self
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height/10000
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y = 0
            }
        }
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func calcPrice() {
        var amount:Float
        
        if (drinkPrice.text!.isEmpty){
            amount = 0.0
        }else {
            amount = Float(drinkPrice.text!)!
        }
        
        let numberDrinks = Float(drinkStepper.value)
        let total = numberDrinks * amount
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle=NumberFormatter.Style.currency
        totalAmount.text = currencyFormatter.string(from: NSNumber(value: total))
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        calcPrice()
    }


}

