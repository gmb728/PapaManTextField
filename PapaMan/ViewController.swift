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
    let synthesizer = AVSpeechSynthesizer()
    
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
   
  
  
    
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
    
        switch segmentControl.selectedSegmentIndex {
        case 0:
            superheroImageView.image = UIImage(named: "batman")
            if mySwitch.isOn {
                let speechUtterance1 = AVSpeechUtterance(string:quoteTextField.text!)
                let speechUtterance2 = AVSpeechUtterance(string:"蝙蝠俠")
                speechUtterance2.preUtteranceDelay = 3
                speechUtterance1.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                speechUtterance2.voice = AVSpeechSynthesisVoice(language:"zh-TW")
           
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
                let speechUtterance1 = AVSpeechUtterance(string:quoteTextField.text!)
                let speechUtterance2 = AVSpeechUtterance(string:"阿基里斯")
                speechUtterance2.preUtteranceDelay = 3
                speechUtterance1.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                speechUtterance2.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                
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
        case 2:
            superheroImageView.image = UIImage(named: "spiderman")
            if mySwitch.isOn {
                let speechUtterance1 = AVSpeechUtterance(string:quoteTextField.text!)
                let speechUtterance2 = AVSpeechUtterance(string:"蜘蛛人")
                speechUtterance2.preUtteranceDelay = 3
                speechUtterance1.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                speechUtterance2.voice = AVSpeechSynthesisVoice(language:"zh-TW")

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
        case 3:
            superheroImageView.image = UIImage(named: "wolverine")
              if mySwitch.isOn {
            let speechUtterance1 = AVSpeechUtterance(string:quoteTextField.text!)
            let speechUtterance2 = AVSpeechUtterance(string:"金剛狼")
            speechUtterance2.preUtteranceDelay = 3
            speechUtterance1.voice = AVSpeechSynthesisVoice(language:"zh-TW")
            speechUtterance2.voice = AVSpeechSynthesisVoice(language:"zh-TW")
            
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
        case 4:
            superheroImageView.image = UIImage(named: "papaman")
            if mySwitch.isOn {
                let speechUtterance1 = AVSpeechUtterance(string:quoteTextField.text!)
                let speechUtterance2 = AVSpeechUtterance(string:"豬隊友")
                speechUtterance2.preUtteranceDelay = 3
                speechUtterance1.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                speechUtterance2.voice = AVSpeechSynthesisVoice(language:"zh-TW")
                
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
        default:
            print ("switch on default condition")
            
        }
        
    
    }
    
   
    @IBAction func viewTapped(_ sender: Any) {
      view.endEditing(true)
    }
    override func viewDidLoad() {
            super.viewDidLoad()
        
        
            // Do any additional setup after loading the view, typically from a nib.
          
}
    
   
    @IBAction func dismissKeyboard(_ sender: Any) {
    }
}
