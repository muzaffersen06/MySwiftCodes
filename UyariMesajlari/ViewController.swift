//
//  ViewController.swift
//  UyariMesajlari
//
//  Created by Muzaffer Baran on 12.12.2022.
//Kullanıcıya uyarı mesajı gösterme.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signUpTiklandi(_ sender: Any) {
        
        if emailTextField.text == ""{
            //email'ini girmemişsin
            
            let uyariMesaji = UIAlertController(title: "Hata Mesajı", message: "Email Yanlış Girildi", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                //OK Button'una tıklanınca olacaklar
                print("ok buttton tiklandi")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
        }
        else if password2TextField.text != passwordTextField.text {
            //parolanı girmemişsin
            let uyariMesaji = UIAlertController(title: "Hata Mesajı", message: "Parola Yanlış Verildi", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                //OK Button'una tıklanınca olacaklar
                print("ok buttton tiklandi")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
        }
        else if password2TextField.text == passwordTextField.text {
            //parolanı girmemişsin
            let uyariMesaji = UIAlertController(title: "Tebrikler", message: "Kayıt Başarılı", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                //OK Button'una tıklanınca olacaklar
                print("ok buttton tiklandi")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
        }
        
    }
    

}
