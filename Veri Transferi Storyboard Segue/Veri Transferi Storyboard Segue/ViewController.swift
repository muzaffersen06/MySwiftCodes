//
//  ViewController.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Muzaffer Baran on 4.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gidecekMesaj = girdiAlani.text!
        
        if segue.identifier == "aTob"{
            print("a dan b ye geçiş")
            
            let gidilecekVC = segue.destination as! ViewControllerB
            gidilecekVC.mesajB = gidecekMesaj
        }
        
        if segue.identifier == "aToc"{
            print("a dan c ye geçiş")
            
            
            let gidilecekVC = segue.destination as! ViewControllerC
            gidilecekVC.mesajC = gidecekMesaj
            
        }
    }
}

