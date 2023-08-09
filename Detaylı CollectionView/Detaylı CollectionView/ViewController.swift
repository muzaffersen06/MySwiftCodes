//
//  ViewController.swift
//  Detaylı CollectionView
//
//  Created by Muzaffer Baran on 9.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var filmCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler] ()
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let genislik = self.filmCollectionView.frame.size.width
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        
        
        let hucreGenislik = (genislik-30)/2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.85)
        
        filmCollectionView!.collectionViewLayout = tasarim
        
       
        
        filmCollectionView.delegate = self
        filmCollectionView.dataSource = self
        
        let f1 = Filmler(filmId: 1, FilmBaslik: "Django", filmFiyat: 15.99,filmResimAdi: "django")
        let f2 = Filmler(filmId: 2, FilmBaslik: "Inception", filmFiyat: 6.99, filmResimAdi: "inception")
        let f3 = Filmler(filmId: 3, FilmBaslik: "Interstellar", filmFiyat: 9.99, filmResimAdi: "interstellar")
        let f4 = Filmler(filmId: 4, FilmBaslik: "Anadoluda", filmFiyat: 13.99, filmResimAdi: "birzamanlaranadoluda")
        let f5 = Filmler(filmId: 5, FilmBaslik: "The Hateful Eight", filmFiyat: 17.99, filmResimAdi: "thehatefuleight")
        let f6 = Filmler(filmId: 6, FilmBaslik: "The Pianist", filmFiyat: 11.99, filmResimAdi: "thepianist")
        
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
        
    }
}

extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate,FilmHucreProtocol{
    func sepeteEkle(indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmBaslik!) Filmi sipariş verildi.")
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let film = filmlerListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmHucre
        
        cell.filmResimAdi.text = film.filmBaslik
        cell.fiyatLabel.text = "\(film.filmFiyat!) TL"
        cell.filmImageView.image = UIImage(named: film.filmResimAdi!)
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 1
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmBaslik!) Filmi seçildi.")
    }
    
}

