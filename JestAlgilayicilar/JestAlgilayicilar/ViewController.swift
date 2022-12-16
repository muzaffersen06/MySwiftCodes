//
//  ViewController.swift
//  JestAlgilayicilar
//
//  Created by Muzaffer Baran on 16.12.2022.
//Kullanıcı bastığı zaman neler olacagını yapacagız.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var baran2 = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //kullanıcının yaptıgı seyleri algılanması icin asagıdaki kodu yazacagiz.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
                                                       
        imageView.addGestureRecognizer(gestureRecognizer)
                                                       
                        
    }
    
    @objc func gorselDegistir(){
        
        if baran2 == false {
            imageView.image = UIImage(named: "baran2")
            label.text = "King Dufy"
            baran2 = true
            
        }
        
        else{
            imageView.image = UIImage(named:"simpson")
            label.text = "Bart Simpson"
            baran2 = false
        }
            
       
    }

}

