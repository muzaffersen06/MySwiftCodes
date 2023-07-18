//
//  ViewController.swift
//  WebView
//
//  Created by Muzaffer Baran on 18.07.2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sitenin yuklenmesi icin kodlama asagıdaki kodu yazarız.Hangi web siteyi istersen onun linkini tanımlamalısın.
        let url = URL(string: "https://gelecegiyazanlar.turkcell.com.tr/")!
        
        webview.load(URLRequest(url: url))
        
    }


}

