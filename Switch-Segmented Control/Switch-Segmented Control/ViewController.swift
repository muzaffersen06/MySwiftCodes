//
//  ViewController.swift
//  Switch-Segmented Control
//
//  Created by Muzaffer Baran on 7.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var uiswitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func switchKonumDegistir(_ sender: UISwitch) {
        
        if sender.isOn {
            print("Switch Açık")
        }else{
            print("Switch Kapalı")
        }
        
    }
    
    @IBAction func tikla(_ sender: Any) {
        print("Switch Durum: \(uiswitch.isOn)")
    }
    
    @IBAction func segementedDegisimControl(_ sender: Any) {
        print("Switch Durum: \(uiswitch.isOn)")
        print("Switch Durum: \(uiswitch.isOn)")
        print("Segmented Durum: \(segmentedControl.selectedSegmentIndex)")
    }
    
}

