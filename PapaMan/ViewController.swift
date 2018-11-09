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
    
   
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var superheroImageView: UIImageView!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var voiceType: UISlider!
    @IBOutlet weak var speedRate: UISlider!
    @IBOutlet weak var volume: UISlider!
    @IBOutlet weak var quoteTextField: UITextField!
    @IBOutlet weak var voiceTypeLabel: UILabel!
    @IBOutlet weak var speedRateLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    
    @IBAction func sliderChange(_ sender: UISlider){
    voiceTypeLabel.text = String(format:"%.f", voiceType.value
    )}
    @IBAction func speedRateChange(_ sender: UISlider) {
    speedRateLabel.text = String(format:"%.f",speedRate.value)
    }
    @IBAction func volumeChange(_ sender: UISlider) {
    volumeLabel.text = String(format:"%.f",volume.value)
        }
  
    
    func chooosePapaMan(){
       switch segmentControl.selectedSegmentIndex {
        case 0:
            superheroImageView.image = UIImage(named: "batman")
            if mySwitch.isOn {
               
               let speechUtterance1 = AVSpeechUtterance(string:quoteTextField.text!)
                let speechUtterance2 = AVSpeechUtterance(string:"貝爾")
               speechUtterance2.preUtteranceDelay = 5
               speechUtterance1.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                speechUtterance2.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                let synthesizer = AVSpeechSynthesizer()
                speechUtterance1.pitchMultiplier = voiceType.value
                speechUtterance1.rate = speedRate.value
                speechUtterance1.volume = volume.value
                speechUtterance2.pitchMultiplier = voiceType.value
                speechUtterance2.rate = speedRate.value
                speechUtterance2.volume = volume.value
                synthesizer.speak(speechUtterance1)
                synthesizer.speak(speechUtterance2)
              
               
            } else {
               
        }
         case 1:
            superheroImageView.image = UIImage(named: "achilles")
            if mySwitch.isOn {
           
                let speechUtterance = AVSpeechUtterance(string:quoteTextField.text!)
                speechUtterance.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                let synthesizer = AVSpeechSynthesizer()
                speechUtterance.pitchMultiplier = voiceType.value
                speechUtterance.rate = speedRate.value
                 speechUtterance.volume = volume.value
                synthesizer.speak(speechUtterance)
            } else {
                
        }
        case 2:
            superheroImageView.image = UIImage(named: "spiderman")
            if mySwitch.isOn {
                let speechUtterance = AVSpeechUtterance(string:quoteTextField.text!)
                speechUtterance.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                let synthesizer = AVSpeechSynthesizer()
                speechUtterance.pitchMultiplier = voiceType.value
                speechUtterance.rate = speedRate.value
                 speechUtterance.volume = volume.value
                synthesizer.speak(speechUtterance)
            
            } else {
               
        }
        case 3:
            superheroImageView.image = UIImage(named: "wolverine")
            if mySwitch.isOn {
           
                let speechUtterance = AVSpeechUtterance(string:quoteTextField.text!)
                speechUtterance.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                let synthesizer = AVSpeechSynthesizer()
                speechUtterance.pitchMultiplier = voiceType.value
                speechUtterance.rate = speedRate.value
                 speechUtterance.volume = volume.value
                synthesizer.speak(speechUtterance)
            } else {
                
        }
        case 4:
            superheroImageView.image = UIImage(named: "papaman")
            if mySwitch.isOn {
                let speechUtterance = AVSpeechUtterance(string:quoteTextField.text!)
                speechUtterance.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                let synthesizer = AVSpeechSynthesizer()
                speechUtterance.pitchMultiplier = voiceType.value
                speechUtterance.rate = speedRate.value
                 speechUtterance.volume = volume.value
        
                synthesizer.speak(speechUtterance)
            } else {
              
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
