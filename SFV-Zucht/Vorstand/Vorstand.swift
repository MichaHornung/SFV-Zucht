//
//  Vorstand.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 17.12.22.
//
import Foundation
import UIKit

struct Vorstand {
    var pic: UIImage
    var titel: String
    var name: String
    var emailadresse: String
    var telefonnummer: String
}

var rolandHeilmann = Vorstand(pic: UIImage(named: "RolandHeilmann")!, titel: "1. Vorsitzender", name: "Roland Heilmann", emailadresse: "noch nicht bekannt", telefonnummer: "0176/20829946")


var vorstand_array: Array = [rolandHeilmann]
