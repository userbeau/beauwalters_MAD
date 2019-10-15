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
    
//    var carMPH:Float = 20
//    var bikeMPH:Float = 10
//    var busMPH:Float = 12.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateValues(_ sender: UIButton) {
        if segmentedControl.selectedSegmentIndex == 0{
            
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
            
            
            imageView.image=UIImage(named: "car_icon")
        } else if segmentedControl.selectedSegmentIndex == 1{
            
            var amountMiles:Float // miles
            var amountGas:Float // gas
            
            if commuteMiles.text!.isEmpty {
                amountMiles = 0.0;
                amountGas = 0.0;
            } else {
                amountMiles = Float(commuteMiles.text!)!
                amountGas = Float(commuteMiles.text!)!
            }
            
            amountMiles = (amountMiles / 12) + 10
            amountGas = 0.0
            
            totalTime.text = String (amountMiles)
            gasPurchase.text = String (amountGas)
            
            imageView.image=UIImage(named: "bus_icon")
            
        } else if segmentedControl.selectedSegmentIndex == 2{
            
            
            var amountMiles:Float // miles
            var amountGas:Float // gas
            
            if commuteMiles.text!.isEmpty {
                amountMiles = 0.0;
                amountGas = 0.0;
            } else {
                amountMiles = Float(commuteMiles.text!)!
                amountGas = Float(commuteMiles.text!)!
            }
            
            amountMiles = amountMiles / 10
            amountGas = 0.0
            
            totalTime.text = String (amountMiles)
            gasPurchase.text = String (amountGas)
            
            
            imageView.image=UIImage(named: "bike_icon")
        }
    }
    
    @IBAction func sliderValue(_ sender: UISlider) {
        gasSliderValue.text = String(gasSlider.value)
    }
    
    @IBAction func monthlyCommuteTime(_ sender: UISwitch) {
//        var amountMiles:Float // miles
//        var amountGas:Float // gas
//
//        if commuteMiles.text!.isEmpty {
//            amountMiles = 0.0;
//            amountGas = 0.0;
//        } else {
//            amountMiles = Float(commuteMiles.text!)!
//            amountGas = Float(commuteMiles.text!)!
//        }
//
//        amountMiles = (amountMiles / 20)*20
//        amountGas = (amountGas / 24)*20
//
//        totalTime.text = String (amountMiles)
//        gasPurchase.text = String (amountGas)
//
//
        if monthlyCommute.isOn{
            if segmentedControl.selectedSegmentIndex == 0{
                
                var amountMiles:Float // miles
                var amountGas:Float // gas
                
                if commuteMiles.text!.isEmpty {
                    amountMiles = 0.0;
                    amountGas = 0.0;
                } else {
                    amountMiles = Float(commuteMiles.text!)!
                    amountGas = Float(commuteMiles.text!)!
                }
                
                amountMiles = (amountMiles / 20) * 20
                amountGas = (amountGas / 24) * 20
                
                totalTime.text = String (amountMiles)
                gasPurchase.text = String (amountGas)
                
                
                imageView.image=UIImage(named: "car_icon")
            } else if segmentedControl.selectedSegmentIndex == 1{
                
                var amountMiles:Float // miles
                
                if commuteMiles.text!.isEmpty {
                    amountMiles = 0.0;
                } else {
                    amountMiles = Float(commuteMiles.text!)!
                }
                
                amountMiles = ((amountMiles / 12) + 10)*20
                
                totalTime.text = String (amountMiles)
                gasPurchase.text = String (0)
                
                imageView.image=UIImage(named: "bus_icon")
                
            } else if segmentedControl.selectedSegmentIndex == 2{
                
                
                var amountMiles:Float // miles
                
                if commuteMiles.text!.isEmpty {
                    amountMiles = 0.0;
                } else {
                    amountMiles = Float(commuteMiles.text!)!
                }
                
                amountMiles = (amountMiles / 10) * 20
                
                totalTime.text = String (amountMiles)
                gasPurchase.text = String (0)
                
                
                imageView.image=UIImage(named: "bike_icon")
            }
        } else {
            if segmentedControl.selectedSegmentIndex == 0{
                
                var amountMiles:Float // miles
                var amountGas:Float // gas
                
                if commuteMiles.text!.isEmpty {
                    amountMiles = 0.0;
                    amountGas = 0.0;
                } else {
                    amountMiles = Float(commuteMiles.text!)!
                    amountGas = Float(commuteMiles.text!)!
                }
                
                amountMiles = (amountMiles / 20)
                amountGas = (amountGas / 24)
                
                totalTime.text = String (amountMiles)
                gasPurchase.text = String (amountGas)
                
                
                imageView.image=UIImage(named: "car_icon")
            } else if segmentedControl.selectedSegmentIndex == 1{
                
                var amountMiles:Float // miles
                
                if commuteMiles.text!.isEmpty {
                    amountMiles = 0.0;
                } else {
                    amountMiles = Float(commuteMiles.text!)!
                }
                
                amountMiles = ((amountMiles / 12) + 10)
                
                totalTime.text = String (amountMiles)
                gasPurchase.text = String (0)
                
                imageView.image=UIImage(named: "bus_icon")
                
            } else if segmentedControl.selectedSegmentIndex == 2{
                
                
                var amountMiles:Float // miles
                
                if commuteMiles.text!.isEmpty {
                    amountMiles = 0.0;
                } else {
                    amountMiles = Float(commuteMiles.text!)!
                }
                
                amountMiles = (amountMiles / 10)
                
                totalTime.text = String (amountMiles)
                gasPurchase.text = String (0)
                
                
                imageView.image=UIImage(named: "bike_icon")
            }
            
        }
       

    }
    
    @IBAction func segCntrlChanged(_ sender: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0{
            
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
            
            
            imageView.image=UIImage(named: "car_icon")
        } else if segmentedControl.selectedSegmentIndex == 1{
            
            var amountMiles:Float // miles
            var amountGas:Float // gas
            
            if commuteMiles.text!.isEmpty {
                amountMiles = 0.0;
                amountGas = 0.0;
            } else {
                amountMiles = Float(commuteMiles.text!)!
                amountGas = Float(commuteMiles.text!)!
            }
            
            amountMiles = (amountMiles / 12) + 10
            amountGas = 0.0
            
            totalTime.text = String (amountMiles)
            gasPurchase.text = String (amountGas)
            
            imageView.image=UIImage(named: "bus_icon")
            
        } else if segmentedControl.selectedSegmentIndex == 2{
            
            
            var amountMiles:Float // miles
            var amountGas:Float // gas
            
            if commuteMiles.text!.isEmpty {
                amountMiles = 0.0;
                amountGas = 0.0;
            } else {
                amountMiles = Float(commuteMiles.text!)!
                amountGas = Float(commuteMiles.text!)!
            }
            
            amountMiles = amountMiles / 10
            amountGas = 0.0
            
            totalTime.text = String (amountMiles)
            gasPurchase.text = String (amountGas)
            
            
            imageView.image=UIImage(named: "bike_icon")
        }
        
    }
    
}

