//
//  ViewController.swift
//  Slider-Stepper
//
//  Created by Muzaffer Baran on 8.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func stepperDegisimKontrol(_ sender: UIStepper) {
        //Degerin anlık görünmesi icin bu kodu yazıyoruz
        stepperLabel.text = "Stepper : \(Int(sender.value))"
    }
    
    @IBAction func sliderDegisimKontrol(_ sender: UISlider) {
        //Degerin anlık görünmesi icin bu kodu yazıyoruz
        sliderLabel.text = "Slider : \(Int(sender.value))"
        
    }
    
    @IBAction func tikla(_ sender: Any) {
        
        print("Slider değer : \(Int(slider.value))")
        
        print("Stepper değer : \(Int(stepper.value))")
    }
    
}

