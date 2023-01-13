//
//  MitgliederbereichViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 04.01.23.
//

import UIKit
import PDFKit

class MitgliederbereichViewController: UIViewController {

    @IBOutlet weak var pdfView: PDFView!
    @IBOutlet weak var ueberschrift: UILabel!
    
    let einladungen = [""]
    var einladungenPDF = [
        PDF(ueberschrift: "")]
    
    
    
    
    
    var mitgliederbereich: String!
    override func viewDidLoad() {
        super.viewDidLoad()

  
        let document = PDFDocument()
        guard let imageOne = UIImage(named: "Fangnachweis") else {return}
        guard let imageTwo = UIImage(named: "Rundschreiben 2018") else {return}
        guard let pageOne = PDFPage(image: imageOne) else {return}
        guard let pageTwo = PDFPage(image: imageTwo) else {return}
        document.insert(pageOne, at: 0)
        document.insert(pageTwo, at: 1)
        pdfView.document = document
        pdfView.autoScales = true
    }
}

        
        

