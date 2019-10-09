//
//  ViewController.swift
//  beat-maker
//
//  Created by Beau Walters on 9/29/19.
//  Copyright © 2019 Beau Walters. All rights reserved.
//
//

//adapted from tutorial:
//https://codewithchris.com/avaudioplayer-tutorial/

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer1 = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()
    var audioPlayer3 = AVAudioPlayer()
    var audioPlayer4 = AVAudioPlayer()
    

    @IBOutlet weak var drumButton1: UIButton!
    @IBOutlet weak var drumButton2: UIButton!
    @IBOutlet weak var drumButton3: UIButton!
    @IBOutlet weak var drumButton4: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    let sound1 = Bundle.main.path(forResource: "808", ofType: "wav")
    let sound2 = Bundle.main.path(forResource: "kick-1", ofType: "wav")
    let sound3 = Bundle.main.path(forResource: "cowbell", ofType: "wav")
    let sound4 = Bundle.main.path(forResource: "highhat", ofType: "wav")
    
    let sound5 = Bundle.main.path(forResource: "piano1", ofType: "wav")
    let sound6 = Bundle.main.path(forResource: "piano2", ofType: "wav")
    let sound7 = Bundle.main.path(forResource: "piano3", ofType: "wav")
    let sound8 = Bundle.main.path(forResource: "piano4", ofType: "wav")
    
    
    
    override func viewDidLoad() {
        
    drumButton1.backgroundColor = UIColor .init(netHex: 0x7DB7FF)
    drumButton2.backgroundColor = UIColor .init(netHex: 0x7DFFC9)
    drumButton3.backgroundColor = UIColor .init(netHex: 0xB8352B)
    drumButton4.backgroundColor = UIColor .init(netHex: 0xFFF952)
        do {
            audioPlayer1 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound1!))
            audioPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound2!))
            audioPlayer3 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound3!))
            audioPlayer4 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound4!))
        } catch {
            print(error)
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func drumDown(_ sender: UIButton) {
        if (audioPlayer1.isPlaying) {
            audioPlayer1.stop()
            audioPlayer1.currentTime = 0.0
            audioPlayer1.play()
        } else {
            audioPlayer1.play()
        }
        drumButton1.backgroundColor = UIColor .init(netHex: 0xFFD17D)
    }
    @IBAction func drumReleased(_ sender: UIButton) {
        drumButton1.backgroundColor = UIColor .init(netHex: 0x7DB7FF)
    }
    @IBAction func kickDown(_ sender: UIButton) {
         if (audioPlayer2.isPlaying) {
            audioPlayer2.stop()
            audioPlayer2.currentTime = 0.0
            audioPlayer2.play()
         } else {
            audioPlayer2.play()
        }
        drumButton2.backgroundColor = UIColor .init(netHex: 0xFFA796)
    }
    @IBAction func kickReleased(_ sender: UIButton) {
       drumButton2.backgroundColor = UIColor .init(netHex: 0x7DFFC9)
    }
    @IBAction func cowDown(_ sender: UIButton) {
        if (audioPlayer3.isPlaying) {
            audioPlayer3.stop()
            audioPlayer3.currentTime = 0.0
            audioPlayer3.play()
        } else {
            audioPlayer3.play()
        }
        drumButton3.backgroundColor = UIColor .init(netHex: 0x7DFFAA)
    }
    @IBAction func cowReleased(_ sender: UIButton) {
        drumButton3.backgroundColor = UIColor .init(netHex: 0xB8352B)
    }
   
    @IBAction func hatDown(_ sender: UIButton) {
        if (audioPlayer4.isPlaying) {
            audioPlayer4.stop()
            audioPlayer4.currentTime = 0.0
            audioPlayer4.play()
        } else {
            audioPlayer4.play()
        }
        drumButton4.backgroundColor = UIColor .init(netHex: 0x9752FF)
    }
    @IBAction func hatReleased(_ sender: UIButton) {
       drumButton4.backgroundColor = UIColor .init(netHex: 0xFFF952)
    }
    @IBAction func changeSound(_ sender: UISegmentedControl) {
        
        // if drums is selected set button sounds to drums
        //else if piano is selected set sounds to piano
        
        switch sender.selectedSegmentIndex{
        case 0:
            do {
                audioPlayer1 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound5!))
                audioPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound6!))
                audioPlayer3 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound8!))
                audioPlayer4 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound8!))
            }
            catch {
                print(error)
            }
            //change to piano button titles
            drumButton1.setTitle("piano1", for: .normal)
            drumButton2.setTitle("piano2", for: .normal)
            drumButton3.setTitle("piano3", for: .normal)
            drumButton4.setTitle("piano4", for: .normal)
        case 1:
            do {
                audioPlayer1 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound1!))
                audioPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound2!))
                audioPlayer3 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound3!))
                audioPlayer4 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound4!))
            }
            catch {
                print(error)
            }
            
            //change to drum button titles
            drumButton1.setTitle("808", for: .normal)
            drumButton2.setTitle("kick", for: .normal)
            drumButton3.setTitle("cowbell", for: .normal)
            drumButton4.setTitle("high hat", for: .normal)
        default:
             print("Fallback option")
        }
        
    }
}

