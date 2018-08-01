//
//  ViewController.swift
//  ReyLo
//
//  Created by Chang Sophia on 2018/5/3.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player : AVPlayer?
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var superheroImageView: UIImageView!
    @IBOutlet weak var mySwitch: UISwitch!
    
    
    
    
    func chooosePapaMan(){
       switch segmentControl.selectedSegmentIndex {
        case 0:
            superheroImageView.image = UIImage(named: "batman")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "The night is darkest just before the dawn. And I promise you, the dawn is coming."
            let speech = AVSpeechUtterance(string: quoteLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(speech)
            } else {
                quoteLabel.isHidden = true
        }
         case 1:
            superheroImageView.image = UIImage(named: "achilles")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "The Gods envy us"
            let speech = AVSpeechUtterance(string: quoteLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(speech)
            
            } else {
                quoteLabel.isHidden = true
        }
        case 2:
            superheroImageView.image = UIImage(named: "spiderman")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "With great power, comes great responsibility"
            let speech = AVSpeechUtterance(string: quoteLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(speech)
            
            } else {
                quoteLabel.isHidden = true
        }
        case 3:
            superheroImageView.image = UIImage(named: "wolverine")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "Don’t be what they made you"
            let speech = AVSpeechUtterance(string: quoteLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(speech)
            } else {
                quoteLabel.isHidden = true
        }
        case 4:
            superheroImageView.image = UIImage(named: "papaman")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "Go brush your teeth and go to bed."
            let speech = AVSpeechUtterance(string: quoteLabel.text!)
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(speech)
            if let url = Bundle.main.url(forResource: "i want something like this", withExtension: "mp3") {
                    player = AVPlayer(url: url)
                    player?.play()
                }
            } else {
                quoteLabel.isHidden = true
        }
       default:
        print ("switch on default condition")
        
        }
        
    }
    @IBAction func mySwitchAction(_ sender: UISwitch) {
        chooosePapaMan()
        
    }
    
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        chooosePapaMan()
        mySwitch.isOn = false
    }
   
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
}
}
