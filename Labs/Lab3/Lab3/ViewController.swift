//
//  ViewController.swift
//  Lab3
//
//  Created by Beau Walters on 9/22/19.
//  Copyright © 2019 Beau Walters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var britneyImg: UIImageView!
    @IBOutlet weak var britneyLabel: UILabel!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var slidervalue: UISlider!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var colorSwitch: UISwitch!
    @IBAction func changeFont(_ sender: UISlider) {
        let fontSize = sender.value
        let fontSizeCGFloat = CGFloat(fontSize)
        britneyLabel.font = UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    @IBAction func capSwitch(_ sender: UISwitch) {
        if capitalSwitch.isOn {
            britneyLabel.text = britneyLabel.text?.uppercased()
        }else {
            britneyLabel.text = britneyLabel.text?.lowercased()
        }
    }
    @IBAction func imageToggle(_ sender: UISegmentedControl) {
        if imageControl.selectedSegmentIndex==0 {
            britneyLabel.text="Hit me baby one more time"
            britneyImg.image = UIImage(named: "britney1.jpg")
        }else if imageControl.selectedSegmentIndex==1{
            britneyLabel.text="Bye Bye Bye"
            britneyImg.image = UIImage(named: "britney2.jpg")
        }
    }
    @IBAction func changeTextColor(_ sender: UISwitch) {
        if colorSwitch.isOn {
            britneyLabel.textColor = UIColor.yellow;
        }else {
            britneyLabel.textColor = UIColor.white;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

