//
//  ViewController.swift
//  Lab1Part2V1
//
//  Created by Michael Zarate on 8/31/15.
//  Copyright (c) 2015 Michael Zarate. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    //connect the UI 
    
    @IBOutlet weak var BMILabelMain: UILabel!
    
    @IBOutlet weak var WeightLabel: UILabel!
    
    @IBOutlet weak var HeightLabel: UILabel!
    
    @IBOutlet weak var BMIOutLabel: UILabel!
    
    @IBOutlet weak var BMINumberOut: UILabel!
    
    @IBOutlet weak var BMIWarningOut: UILabel!
    
    @IBOutlet weak var WeightSlider: UISlider!
    
    @IBOutlet weak var WieghtSlideLabel: UILabel!
    
    @IBOutlet weak var HeightSlider: UISlider!
    
    @IBOutlet weak var HeightSlideLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func WeightSliderChanged(sender: UISlider) {
        
       
        
        WieghtSlideLabel.text = "\(WeightSlider.value)"
        
        var height : Float = HeightSlider.value
        
        var BMI : Float =  (WeightSlider.value / (height * height)) * 703
        
        BMINumberOut.text = "\(BMI)"
        
        
        var TextOutput : String = "You are "
        
        
        
        if BMI < 18
        {
            
            TextOutput += " underweight "
            BMIWarningOut.text = TextOutput
            BMIWarningOut.textColor = UIColor.blueColor()
            
            
        }
        else if BMI >= 18 && BMI < 25
        {
            TextOutput += " normal ..."
            BMIWarningOut.text = TextOutput
            BMIWarningOut.textColor = UIColor.greenColor()
        }
        else if BMI >= 25 && BMI < 30
        {
            TextOutput += " pre-obese..."
            BMIWarningOut.text = TextOutput
            BMIWarningOut.textColor = UIColor.purpleColor()
            
        }
        else if BMI >= 30
        {
            TextOutput += " OBESE !!"
            BMIWarningOut.text = TextOutput
            BMIWarningOut.textColor = UIColor.redColor()
        }

        
        
        
    }
    
    
    @IBAction func HeightSliderChanged(sender: UISlider) {
        
        var height : Float = HeightSlider.value
        
        var BMI : Float =  (WeightSlider.value / (height * height)) * 703
        
        BMINumberOut.text = "\(BMI)"
        
        HeightSlideLabel.text = "\(HeightSlider.value)"
        
        
        
        var TextOutput : String = "You are "
        
        
        if BMI < 18
        {
            
            TextOutput += " underweight "
            BMIWarningOut.text = TextOutput
            BMIWarningOut.textColor = UIColor.blueColor()
            
            
        }
        else if BMI >= 18 && BMI < 25
        {
            TextOutput += " normal ..."
            BMIWarningOut.text = TextOutput
            BMIWarningOut.textColor = UIColor.greenColor()
        }
        else if BMI >= 25 && BMI < 30
        {
            TextOutput += " pre-obese..."
            BMIWarningOut.text = TextOutput
            BMIWarningOut.textColor = UIColor.purpleColor()
            
        }
        else if BMI >= 30
        {
            TextOutput += " OBESE !!"
            BMIWarningOut.text = TextOutput
            BMIWarningOut.textColor = UIColor.redColor()
        }

    }
    
    
    
    


}

