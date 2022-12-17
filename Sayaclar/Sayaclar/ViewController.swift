//
//  ViewController.swift
//  Sayaclar
//
//  Created by Muzaffer Baran on 16.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var timer = Timer()
    var kalanZaman = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kalanZaman = 15
        label.text = "Zaman:\(kalanZaman)"
        
    }

    @IBAction func baslatTiklandi(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
    }
    
    @objc func timerFonksiyonu(){
        
        label.text = "Zaman: \(kalanZaman)"
        kalanZaman = kalanZaman - 1
        
        if kalanZaman == 0 {
            label.text = "Süre Bitti"
            timer.invalidate()
            kalanZaman = 15 // Süre bittiginde tekrardan 15 e gelsin diye yazdık bu satırı.
        }
        
    }
    
}

