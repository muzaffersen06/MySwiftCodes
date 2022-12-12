//
//  ViewController.swift
//  ViewControllerProjesi
//
//  Created by Muzaffer Baran on 10.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var BirinciLabel: UILabel!
    
    @IBOutlet var textField: UIView!
    var alinanSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func kontrolEtTiklandi(_ sender: Any) {
        
        alinanSifre = textField.text!
        
        performSegue(withIdentifier: "toikinciVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toikinciVC" {
            
            let destinationVC = segue.destination as! IkinciViewController
            destinationVC.verilenSifre = alinanSifre
        }
    }
    
}
