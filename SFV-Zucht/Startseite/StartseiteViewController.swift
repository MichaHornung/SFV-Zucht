//
//  StartseiteViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 23.01.23.
//

import UIKit
import WebKit


class StartseiteViewController: UIViewController, UISearchBarDelegate {


    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.mur-tackle-shop.de/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        webView.navigationDelegate = self
        
    }
    
    @IBAction func rueckwaerts(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func vorwaerts(_ sender: Any) {
        webView.goForward()
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let searchText = searchBar.text!
        searchBar.resignFirstResponder()
        let newURL = URL(string: searchText)!
        let urlRequest = URLRequest(url: newURL)
        webView.load(urlRequest)
        searchBar.text = newURL.absoluteString
    }
    
    
    
}


extension StartseiteViewController: WKNavigationDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
 
        
    }
}
