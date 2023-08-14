//
//  ViewController.swift
//  UserDefault Sayac
//
//  Created by Muzaffer Baran on 14.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard
        
        var sayac = d.integer(forKey: "sayac")
        
        sayac = sayac + 1
        
        d.set(sayac, forKey: "sayac")
        
        labelSayac.text = "Sayaç : \(sayac)"
        
        
    }


}

