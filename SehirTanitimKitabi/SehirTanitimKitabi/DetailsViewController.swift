//
//  DetailsViewController.swift
//  SehirTanitimKitabi
//
//  Created by Muzaffer Baran on 20.12.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sehirIsimLabel: UILabel!
    @IBOutlet weak var sehirBolgesiLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sehirIsimLabel.text = secilenSehir?.isim
        sehirBolgesiLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel

        
        
        
        
    }
    


}
