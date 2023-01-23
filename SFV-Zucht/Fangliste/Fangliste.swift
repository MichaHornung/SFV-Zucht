//
//  Fangliste.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 04.01.23.
//

import UIKit

struct Fangliste{
    var gewaesser: String
    var datum: String
    var fischart: String
    var gewicht: String
    var stueckzahl: String
}

var Schauffele = Fangliste(gewaesser: "Schauffele", datum: "11.11.2023", fischart: "Karpfen", gewicht: "12.4", stueckzahl: "1")

var fangliste_array: Array = [Schauffele]
