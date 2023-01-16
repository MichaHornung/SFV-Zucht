//
//  GewaesserAnsichtViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 21.12.22.
//

import UIKit

class GewaesserAnsichtViewController: UIViewController {
    
    @IBOutlet weak var gewaesserName: UILabel!
    @IBOutlet weak var lageTextViews: UITextView!
    @IBOutlet weak var gewaesserGroesseTextView: UITextView!
    @IBOutlet weak var besonderheitenTextView: UITextView!
    @IBOutlet weak var gewaesserInfo: UITextView!
    @IBOutlet weak var gewaesserKartePic: UIImageView!
    @IBOutlet weak var gewaesserPic: UIImageView!
    
    var gewaesser: Gewaesser!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        gewaesserName.text = gewaesser.gewaesserName
        lageTextViews.text = gewaesser.lageTextViews
        gewaesserGroesseTextView.text = gewaesser.gewaesserGroesseTextView
        besonderheitenTextView.text = gewaesser.besonderheitenTextView
        gewaesserInfo.text = gewaesser.gewaesserInfo
        gewaesserKartePic.image = gewaesser.gewaesserKartePic
        gewaesserPic.image = gewaesser.gewaesserPic

   
    }
    


}
