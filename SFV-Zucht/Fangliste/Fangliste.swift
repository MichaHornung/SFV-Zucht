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
var Gemeindeloch = Fangliste(gewaesser: "Gemeindeloch 1/2", datum: "11.11.2023", fischart: "Karpfen", gewicht: "12.4", stueckzahl: "1")
var Altrhein = Fangliste(gewaesser: "Altrhein", datum: "11.11.2023", fischart: "Karpfen", gewicht: "12.4", stueckzahl: "1")
var Rathjens = Fangliste(gewaesser: "Rathjens/Kiefer", datum: "11.11.2023", fischart: "Karpfen", gewicht: "12.4", stueckzahl: "1")
var Ritterhecke = Fangliste(gewaesser: "Ritterhecke", datum: "11.11.2023", fischart: "Karpfen", gewicht: "12.4", stueckzahl: "1")
var Altwasser = Fangliste(gewaesser: "Altwasser", datum: "11.11.2023", fischart: "Karpfen", gewicht: "12.4", stueckzahl: "1")
var Hörnel = Fangliste(gewaesser: "Hörnel", datum: "11.11.2023", fischart: "Karpfen", gewicht: "12.4", stueckzahl: "1")

var fangliste_array: Array = [Schauffele, Gemeindeloch, Altrhein, Rathjens, Ritterhecke, Altwasser, Hörnel]
