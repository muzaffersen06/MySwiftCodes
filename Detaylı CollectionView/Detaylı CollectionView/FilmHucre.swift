//
//  FilmHucre.swift
//  Detaylı CollectionView
//
//  Created by Muzaffer Baran on 9.08.2023.
//

import UIKit

protocol FilmHucreProtocol {
    func sepeteEkle(indexPath:IndexPath)
    
}

class FilmHucre: UICollectionViewCell {
    
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var fiyatLabel: UILabel!
    @IBOutlet weak var filmResimAdi: UILabel!
    
    var hucreProtocol: FilmHucreProtocol?
    var indexPath:IndexPath?
    
    @IBAction func sepeteEkle(_ sender: Any) {
        
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
        
    }
}
