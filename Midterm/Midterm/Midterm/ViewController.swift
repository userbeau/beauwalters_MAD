//
//  ViewController.swift
//  Midterm
//
//  Created by Beau Walters on 10/15/19.
//  Copyright © 2019 Beau Walters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var commuteMiles: UITextField!
    @IBOutlet weak var monthlyCommute: UISwitch!
    @IBOutlet weak var gasSlider: UISlider!
    @IBOutlet weak var gasSliderValue: UILabel!
    @IBOutlet weak var totalTime: UILabel!
    @IBOutlet weak var gasPurchase: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateValues(_ sender: UIButton) {
        var amountMiles:Float // miles
        var amountGas:Float // gas
       
        if commuteMiles.text!.isEmpty {
            amountMiles = 0.0;
            amountGas = 0.0;
        } else {
            amountMiles = Float(commuteMiles.text!)!
            amountGas = Float(commuteMiles.text!)!
        }
        
        amountMiles = amountMiles / 20
        amountGas = amountGas / 24
        
        totalTime.text = String (amountMiles)
        gasPurchase.text = String (amountGas)
    }
    
    @IBAction func sliderValue(_ sender: UISlider) {
        gasSliderValue.text = String(gasSlider.value)
    }
    
    @IBAction func monthlyCommuteTime(_ sender: UISwitch) {
        var amountMiles:Float // miles
        var amountGas:Float // gas
        
        if commuteMiles.text!.isEmpty {
            amountMiles = 0.0;
            amountGas = 0.0;
        } else {
            amountMiles = Float(commuteMiles.text!)!
            amountGas = Float(commuteMiles.text!)!
        }
        
        amountMiles = (amountMiles / 20)*20
        amountGas = (amountGas / 24)*20
        
        totalTime.text = String (amountMiles)
        gasPurchase.text = String (amountGas)
    }
    
    @IBAction func segCntrlChanged(_ sender: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0{
            
            imageView.image=UIImage(named: "car_icon")
        } else if segmentedControl.selectedSegmentIndex == 1{
            imageView.image=UIImage(named: "bus_icon")
            
        } else if segmentedControl.selectedSegmentIndex == 2{
            imageView.image=UIImage(named: "bike_icon")
        }
        
    }
    
}

