//
//  ViewController.swift
//  Color Tester
//
//  Created by Rohit Shivdas Badgujar on 29/01/2019.
//  Copyright © 2019 Rohit Shivdas Badgujar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets and Actions

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var colorTypeSegment: UISegmentedControl!
    @IBOutlet weak var onoffswitch: UISwitch!
    @IBOutlet weak var controlPanel: UIView!
    
    @IBOutlet weak var sliderView: UIView!
    
    @IBAction func testColorAction(_ sender: Any) {
        if colorTypeSegment.selectedSegmentIndex == 0 {
        testColor()
        }
        else{
            let v = (sender as! UISlider).value
            redSlider.setValue(v, animated: true)
            blueSlider.setValue(v, animated: true)
            greenSlider.setValue(v, animated: true)
            testColor()
            
        }
        
    }
    
    @IBAction func resetColorAction(_ sender: Any) {
        //reset slider and test color
        redSlider.setValue(0.5, animated: true)
        blueSlider.setValue(0.5, animated: true)
        greenSlider.setValue(0.5, animated: true)
    }
    
    @IBAction func onOffAction(_ sender: Any) {
        if onoffswitch.isOn  == true {
            sliderView.isHidden = false
            colorView.isHidden = false
            controlPanel.isHidden = false
        }
        else{
            sliderView.isHidden = true
            colorView.isHidden = true
            controlPanel.isHidden = true
        }
    
    }
    
    
    func testColor(){
        
        //get slider values and make a color
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        
        //place the color in the view
        colorView.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

