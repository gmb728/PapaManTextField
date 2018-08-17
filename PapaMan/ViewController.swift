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
    @IBOutlet weak var voiceType: UISlider!
    
    @IBOutlet weak var speedRate: UISlider!
    
    
    
    func chooosePapaMan(){
       switch segmentControl.selectedSegmentIndex {
        case 0:
            superheroImageView.image = UIImage(named: "batman")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "The night is darkest just before the dawn"
                let speechUtterance = AVSpeechUtterance(string:quoteLabel.text!)
                speechUtterance.voice = AVSpeechSynthesisVoice(language:"en-US")
                let synthesizer = AVSpeechSynthesizer()
                speechUtterance.pitchMultiplier = voiceType.value
                speechUtterance.rate = speedRate.value
                synthesizer.speak(speechUtterance)
                
            } else {
                quoteLabel.isHidden = true
        }
         case 1:
            superheroImageView.image = UIImage(named: "achilles")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "Les dieux nous envient"
                let speechUtterance = AVSpeechUtterance(string:quoteLabel.text!)
                speechUtterance.voice = AVSpeechSynthesisVoice(language:"fr-ca")
                let synthesizer = AVSpeechSynthesizer()
                speechUtterance.pitchMultiplier = voiceType.value
                speechUtterance.rate = speedRate.value
                synthesizer.speak(speechUtterance)
            
            } else {
                quoteLabel.isHidden = true
        }
        case 2:
            superheroImageView.image = UIImage(named: "spiderman")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "Con un gran poder viene una gran responsabilidad"
                let speechUtterance = AVSpeechUtterance(string:quoteLabel.text!)
                speechUtterance.voice = AVSpeechSynthesisVoice(language:"es")
                let synthesizer = AVSpeechSynthesizer()
                speechUtterance.pitchMultiplier = voiceType.value
                speechUtterance.rate = speedRate.value
                synthesizer.speak(speechUtterance)
            
            } else {
                quoteLabel.isHidden = true
        }
        case 3:
            superheroImageView.image = UIImage(named: "wolverine")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "Не тое, што яны зрабілі вас"
                let speechUtterance = AVSpeechUtterance(string:quoteLabel.text!)
                speechUtterance.voice = AVSpeechSynthesisVoice(language:"ru")
                let synthesizer = AVSpeechSynthesizer()
                speechUtterance.pitchMultiplier = voiceType.value
                speechUtterance.rate = speedRate.value
                synthesizer.speak(speechUtterance)
            } else {
                quoteLabel.isHidden = true
        }
        case 4:
            superheroImageView.image = UIImage(named: "papaman")
            if mySwitch.isOn {
            quoteLabel.isHidden = false
            quoteLabel.text = "去刷牙，快上床睡覺"
                if let url = Bundle.main.url(forResource: "Brush", withExtension: "m4a"){
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
