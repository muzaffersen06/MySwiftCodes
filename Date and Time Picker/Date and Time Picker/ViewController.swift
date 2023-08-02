//
//  ViewController.swift
//  Date and Time Picker
//
//  Created by Muzaffer Baran on 2.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldTarih: UITextField!
    @IBOutlet weak var textFieldSaat: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.preferredDatePickerStyle = .wheels
        textFieldTarih.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.preferredDatePickerStyle = .wheels
        textFieldSaat.inputView = timePicker
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)
        
    }
    
    @objc func tarihGoster(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"//tarih stili
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        
        textFieldTarih.text = alinanTarih //text field ustunde gorunmesi icin bu kodu yaz.
        view.endEditing(true)//Tarih sectikten sonra kapanması icin bu kodu yaz.
        
    }
    @objc func saatGoster(timePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"//saat stili
        
        let alinanSaat = dateFormatter.string(from: timePicker.date)
        textFieldSaat.text = alinanSaat
    }
    
}
