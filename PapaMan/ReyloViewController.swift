//
//  ReyloViewController.swift
//  ReyLo
//
//  Created by Chang Sophia on 2018/5/3.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit

class ReyloViewController: UIViewController {
 
   
    
    

    
    @IBAction func buttonPress(_ sender: UIButton) {
        if Segment.selectedSegmentIndex == 0{
            jediLabel .text="You are a Brightside Jedi"
            kyloImage.isHidden=true
            reyImage.isHidden=false
            
        }else{
            
            kyloImage.isHidden=false
            reyImage.isHidden=true
            jediLabel .text="You are a Darkside Jedi"
        }
    }
   
    
    @IBAction func genderSegment(_ sender: UISegmentedControl) {
    }
    @IBAction func ageSlider(_ sender: UISlider) {
         ageLabel.text="\(Int(sender.value))"
    }

    @IBAction func loveSwitch(_ sender: UISwitch) {
    
        if sender.isOn==true{
            loveLabel.text="Reylo Fan"
        }
        else{
            
            loveLabel.text="Not a Reylo Fan"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
