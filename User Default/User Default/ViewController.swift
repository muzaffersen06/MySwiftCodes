//
//  ViewController.swift
//  User Default
//
//  Created by Muzaffer Baran on 14.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //veri kaydetme,silme diğer islemler...
        let d = UserDefaults.standard
        
        //veri kaydetme
        d.set("Baran", forKey: "ad")
        d.set(18, forKey: "yas")
        d.set(1.78, forKey: "boy")
        d.set(true, forKey: "medeniDurum")
        
        let arkadasListesi = ["ali","veysel","ece"]
        //diziyi kaydetme
        d.set(arkadasListesi, forKey: "liste")
        
        let sehirlerListesi:[String:String] = ["06":"Ankara","34":"İstanbul"]
        //kaydetme
        d.set(sehirlerListesi, forKey: "dict")
        
        
        //veri okuma
        
        let ad = d.string(forKey: "ad") ?? "isim yok" //soru isareti koymanın sebebi veri aktarmada bir sıkıntı olursa "isim yok" yazdır.
        let yas = d.integer(forKey: "yas")//buradaki key ismi ile yukarıdaki key ismi mutlaka uyuşmalı!!
        let boy = d.double(forKey: "boy")
        let medeniDurum = d.bool(forKey: "medeniDurum")
        
        print(ad)
        print(yas)
        print(boy)
        print(medeniDurum)
        
        //listeleri okuma
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()//as? dönüşüm yapmak icin,?? ise bir sorun olursa boş dizi olarak yazdır demek.(ONEMLI)
        print(liste[0])
        
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        print(dict["06"]!)
        
        //veri silme
        d.removeObject(forKey: "ad")//silmek istediğin keyi yaz.
        
        
        
        
    }


}

