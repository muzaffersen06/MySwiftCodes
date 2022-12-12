//
//  IkinciViewController.swift
//  ViewControllerProjesi
//
//  Created by Muzaffer Baran on 10.12.2022.
//

import UIKit

class IkinciViewController: UIViewController {

    @IBOutlet weak var bulunanSifreLabel: UILabel!
    @IBOutlet weak var ikinciLabel: UILabel!
    
    
    var verilenSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bulunanSifreLabel.text = verilenSifre

            }
    

   

}
