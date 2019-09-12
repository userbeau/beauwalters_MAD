//
//  ViewController.swift
//  Lab 1
//
//  Created by Beau Walters on 9/10/19.
//  Copyright © 2019 Beau Walters. All rights reserved.
//

import UIKit
class ViewController: UIViewController {


    @IBOutlet weak var textOut: UILabel!
    @IBOutlet weak var imageOut: UIImageView!
    
    @IBAction func changeText(_ sender: UIButton) {
    textOut.text = "Have a good day!"
    }
    
    @IBAction func changeImage(_ sender: UIButton) {
        
        if sender.tag == 2 {
            imageOut.image=UIImage(named: "image2.jpg")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()}
}

