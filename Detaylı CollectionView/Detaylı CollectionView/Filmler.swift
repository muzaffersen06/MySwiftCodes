//
//  Filmler.swift
//  Detaylı CollectionView
//
//  Created by Muzaffer Baran on 9.08.2023.
//

import Foundation

class Filmler {
    var filmId:Int?
    var filmBaslik:String?
    var filmFiyat:Double?
    var filmResimAdi:String?
    
    init() {
    }
    
    init(filmId:Int,FilmBaslik:String,filmFiyat:Double,filmResimAdi:String) {
        self.filmId = filmId
        self.filmBaslik = FilmBaslik
        self.filmFiyat = filmFiyat
        self.filmResimAdi = filmResimAdi
        
    }
}
