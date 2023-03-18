//
//  ViewController.swift
//  Xylophone
//
//  Created by Abdeljaouad Mezrari on 25/02/2023.
//  Copyright © 2023 Abdeljaouad Mezrari. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        sender.layer.opacity = 0.3
        playsound(soundName: sender.currentTitle ?? "C")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.layer.opacity = 1
        }
    }
    
    func playsound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}

