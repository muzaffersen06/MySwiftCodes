//
//  ViewController.swift
//  VideoWiew
//
//  Created by Muzaffer Baran on 18.07.2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func Play(_ sender: Any) {
        
        if let dosyaYolu = Bundle.main.path(forResource: "video", ofType: "mp4"){
            
            let oynatici = AVPlayer(url: URL(fileURLWithPath: dosyaYolu))
            
            let oynaticiKontrol = AVPlayerViewController()
            
            oynaticiKontrol.player = oynatici
            
            present(oynaticiKontrol,animated: true){
                oynatici.play()
            }
        }
    }
    
}

