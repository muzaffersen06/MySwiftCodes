//
//  ViewController.swift
//  ImageView
//
//  Created by Muzaffer Baran on 8.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func resim1Tikla(_ sender: Any) {
        //Resimi aktarması icin asagıdaki kodu yazıyoruz
        imageView.image = UIImage(named: "resim")
        
    }
    
    @IBAction func resim2Tikla(_ sender: Any) {
        //Resimi aktarması icin asagıdaki kodu yazıyoruz
        imageView.image = UIImage(named: "resim2")
        
    }
    
}

