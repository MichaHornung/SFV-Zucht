//
//  Gewaesser.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 21.12.22.
//

import UIKit

struct Gewaesser{
    
    var gewaesserPic: UIImage
    var gewaesserName: String
    var lageTextViews: String
    var gewaesserGroesseTextView: String
    var besonderheitenTextView: String
    var gewaesserInfo: String
    var gewaesserKartePic: UIImage
    
}
var schauffele = Gewaesser(gewaesserPic: UIImage(named: "SchauffeleBild")!, gewaesserName: "Schauffele", lageTextViews: "", gewaesserGroesseTextView: "", besonderheitenTextView: "", gewaesserInfo: "", gewaesserKartePic: UIImage(named: "Schauffele")!)

var gewaesser_array: Array = [schauffele]
