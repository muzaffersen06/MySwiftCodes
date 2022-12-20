//
//  ViewController.swift
//  SuperHeros
//
//  Created by Muzaffer Baran on 17.12.2022.
//  tableView kullanırken bazı fonksiyonlar yazmamız gerekir.Kaç tane hücre/satır gösterileceği gibi.

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var superKahramanGorselIsimleri = [String]()
    var superHeros = [String]()//Bos bir dizi olusturdum icersine istedigimi koyabilirim.
    var secilenIsim = ""
    var secilenGorsel = ""


    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superHeros.append("Batman")
        superHeros.append("Superman")
        superHeros.append("Iron Man")
        superHeros.append("Spiderman")
        superHeros.append("Captain America")
        
        
        superKahramanGorselIsimleri.append("batman")//aynı sırada ve assest dosyasındaki isimleri ile birebir aynı olmalı!!
        superKahramanGorselIsimleri.append("superman")//farklı isimli olursa uygulama coker.
        superKahramanGorselIsimleri.append("iron man")
        superKahramanGorselIsimleri.append("spiderman")
        superKahramanGorselIsimleri.append("captain america")
        
        
    }
    
    //numberOfRowsInsection = kaç tane row olacak
    //callForRow atIndexPath = hücrenin içerisinde neler gösterilecek (bu kodlar diger fonksiyonlar gibi  yazınca çıkmaz çıkması icin tanıtmamız gerekir.UITableViewDelegate ve UITableViewDataSource ekliyoruz.
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeros.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeros[indexPath.row]//bu kod sırayla satırla yazılmasını saglar.Cok onemlidir!!
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         secilenIsim = superHeros[indexPath.row]
         secilenGorsel = superKahramanGorselIsimleri[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)//ıdentifer'ı aynı verdigine emin ol! Bu fonksiyon diger ekrana gecmemi saglar.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanIsmi = secilenGorsel
        }
        
            }
        }
    


