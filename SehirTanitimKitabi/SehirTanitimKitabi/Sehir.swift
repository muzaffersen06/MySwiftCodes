//
//  Sehir.swift
//  SehirTanitimKitabi
//
//  Created by Muzaffer Baran on 20.12.2022.
//  Sınıf isimleri buyuk harfle başlamalı.
//  UIKit kütüphanesini mutlaka import etmen gerekir.

import Foundation
import UIKit

class Sehir {
    
    var isim : String
    var bolge : String
    var gorsel : UIImage
   
    init(isim: String , bolge: String , gorsel: UIImage ) {
        self.isim = isim
        self.bolge = bolge
        self.gorsel = gorsel
    }
    
    
}
