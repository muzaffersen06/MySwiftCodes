//
//  ViewController.swift
//  PickerView
//
//  Created by Muzaffer Baran on 2.08.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var ulkeler:[String] = [String]()
    
    var secilenUlke:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye", "Almanya", "Japonya", "Rusya", "İtalya"]
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 //kac sutun olması gerektigini bu kodla yaz.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count // kac eleman varsa bunu kodla yazman gerek
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row] // ulkelerin isimlerini yazması icin satır satır.
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelSonuc.text = ulkeler[row]//sectigim ulkenin labelde(yukarıda) gorunmesi icin.
        
        secilenUlke = ulkeler[row]
    }
    
    
    @IBAction func goster(_ sender: Any) {
        
        print(secilenUlke!)//outputta yazması icin.
    }
    
}

