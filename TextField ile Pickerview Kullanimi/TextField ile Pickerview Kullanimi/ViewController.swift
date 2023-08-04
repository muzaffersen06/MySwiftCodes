//
//  ViewController.swift
//  TextField ile Pickerview Kullanimi
//
//  Created by Muzaffer Baran on 4.08.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var textfieldUlke: UITextField!
    
    var pickerView:UIPickerView?
    
    var ulkeler:[String] = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya"]
        
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        textfieldUlke.inputView = pickerView
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()//Ekrana gore boyutlandırmak icin bu kodu yaz.
        
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController.tamamTikla))
        
        let boslukButon = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let iptalButton = UIBarButtonItem(title: "İptal", style: .plain, target: self, action: #selector(ViewController.iptalTikla))
            
        toolbar.setItems([iptalButton,boslukButon,tamamButton], animated: true)
        
        textfieldUlke.inputAccessoryView = toolbar
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textfieldUlke.text = ulkeler[row]
    }
    
    @objc func tamamTikla(){
        textfieldUlke.text = ""
        textfieldUlke.placeholder = "Ülke Seç"
        view.endEditing(true)
        
    }
    
    @objc func iptalTikla(){
        view.endEditing(true)
        
    }

}

