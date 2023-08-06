//
//  ViewController.swift
//  Custom Cell TableView
//
//  Created by Muzaffer Baran on 6.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisiId: 1, kisiAd: "Ahmet", kisiTel: "18321796")
        let k2 = Kisiler(kisiId: 2, kisiAd: "Baran", kisiTel: "09283748")
        let k3 = Kisiler(kisiId: 3, kisiAd: "Samet", kisiTel: "03247880")
        let k4 = Kisiler(kisiId: 4, kisiAd: "Mehmet", kisiTel: "88708714")
        let k5 = Kisiler(kisiId: 5, kisiAd: "Ece", kisiTel: "9823525332")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
        
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        
        cell.kisiAdLabel.text = "\(gelenKisi.kisiAd!)-\(gelenKisi.kisiTel!)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
    }
    
}

