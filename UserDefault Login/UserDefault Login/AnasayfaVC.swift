//
//  AnasayfaVC.swift
//  UserDefault Login
//
//  Created by Muzaffer Baran on 15.08.2023.
//

import UIKit

class AnasayfaVC: UIViewController {
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //geri butonunu kaldırmalıyız
        navigationItem.hidesBackButton = true
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = ka
    }
    
    @IBAction func cikisYap(_ sender: Any) {
        
        //cıkıs butonu
        //verileri silmemiz gerek cünkü ilk ekrana gitmesi gerek
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        //ana ekrana atması icin(cıkıs yapması icin).Direk uygulamayı kapatır.
        exit(-1)
    }
    
   

}
