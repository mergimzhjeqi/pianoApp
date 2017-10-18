//
//  ViewController.swift
//  Piano
//
//  Created by Mergim on 10/16/17.
//  Copyright © 2017 Mergim. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    var notat = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var butoniIShtypur:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playSound(_ sender: UIButton) {
        
        butoniIShtypur = sender.tag
        playSound()
    }
    
    func playSound()
    {
        var audioFile = Bundle.main.url(forResource: notat[butoniIShtypur], withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: audioFile!)
        audioPlayer.play()
    }
    
    
}

