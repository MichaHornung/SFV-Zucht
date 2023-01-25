//
//  testViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 25.01.23.
//

import UIKit
import WebKit


class testViewController: UIViewController {
    @IBOutlet weak var test: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
print("test")

        let testePdf = Bundle.main.url(forResource: "test", withExtension: "pdf")
        test.load(URLRequest(url: testePdf!))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
