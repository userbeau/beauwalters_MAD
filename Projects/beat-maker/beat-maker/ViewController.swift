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
    

    @IBOutlet weak var drumButton: UIButton!
    @IBOutlet weak var drumButton2: UIButton!
    @IBOutlet weak var drumButton3: UIButton!
    @IBOutlet weak var drumButton4: UIButton!
    
    
    override func viewDidLoad() {
        
        let sound1 = Bundle.main.path(forResource: "808", ofType: "wav")
        let sound2 = Bundle.main.path(forResource: "kick-1", ofType: "wav")
        let sound3 = Bundle.main.path(forResource: "cowbell", ofType: "wav")
        let sound4 = Bundle.main.path(forResource: "highhat", ofType: "wav")
        
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
        drumButton.backgroundColor = UIColor .red
    }
    @IBAction func drumReleased(_ sender: UIButton) {
        
        drumButton.backgroundColor = UIColor .blue
    }
    @IBAction func kickDown(_ sender: UIButton) {
         if (audioPlayer2.isPlaying) {
            audioPlayer2.stop()
            audioPlayer2.currentTime = 0.0
            audioPlayer2.play()
         } else {
            audioPlayer2.play()
        }
        drumButton2.backgroundColor = UIColor .yellow
    }
    @IBAction func kickReleased(_ sender: UIButton) {
       drumButton2.backgroundColor = UIColor .gray
    }
    @IBAction func cowDown(_ sender: UIButton) {
        if (audioPlayer3.isPlaying) {
            audioPlayer3.stop()
            audioPlayer3.currentTime = 0.0
            audioPlayer3.play()
        } else {
            audioPlayer3.play()
        }
        drumButton3.backgroundColor = UIColor .purple
    }
    @IBAction func cowReleased(_ sender: UIButton) {
        drumButton3.backgroundColor = UIColor .orange
    }
   
    @IBAction func hatDown(_ sender: UIButton) {
        if (audioPlayer4.isPlaying) {
            audioPlayer4.stop()
            audioPlayer4.currentTime = 0.0
            audioPlayer4.play()
        } else {
            audioPlayer4.play()
        }
        drumButton4.backgroundColor = UIColor .magenta
    }
    @IBAction func hatReleased(_ sender: UIButton) {
       drumButton4.backgroundColor = UIColor .green
    }
}

