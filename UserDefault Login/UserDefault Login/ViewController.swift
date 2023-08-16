//
//  ViewController.swift
//  UserDefault Login
//
//  Created by Muzaffer Baran on 15.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldKullaniciAdi: UITextField!
    @IBOutlet weak var textFieldSifre: UITextField!
    
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && s != "bos"{
            performSegue(withIdentifier: "girisToanasayfa", sender: nil)
        }
        
    }

    @IBAction func girisYap(_ sender: Any) {
        //virgulle birden fazla veri alabilirsin
        if let ka = textFieldKullaniciAdi.text , let s = textFieldSifre.text {
            //veriyi biz ekliyoruz
            if ka == "admin" && s == "123456" {
              
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")
                
                //performSegue ile diger sayfaya gecis yaparız.
                performSegue(withIdentifier: "girisToanasayfa", sender: nil)
                
            }else{
                print("Hatalı Giriş")
            }
        }
        
    }
    
    //navigation control kismini gizleme COK ONEMLI!!!!!! Her app de kullanılır.
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    // navigation control her sayfada gizlenmemsi icin asagıdaki kodu yazarız.
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
}

