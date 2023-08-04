//
//  ViewController.swift
//  Cok Bolumlu TableView
//
//  Created by Muzaffer Baran on 4.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
  
    var bolumler = ["Meyveler","Renkler","Mevsimler"]
    
    var bolumVerileri = [["Elma","Muz","Ayva","Çilek"],["Kırmızı","Mavi","Yeşil"], ["Yaz","Kış"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return bolumler.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bolumVerileri[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return bolumler[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi", for:  indexPath)
        
        cell.textLabel?.text = bolumVerileri[indexPath.section][indexPath.row]
        
        return cell
    }
    
    
}

