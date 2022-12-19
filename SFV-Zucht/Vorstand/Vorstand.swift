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

}

var rolandHeilmann = Vorstand(pic: UIImage(named: "RolandHeilmann")!, titel: "1. Vorsitzender", name: "Roland Heilmann")
var thomasWuest = Vorstand(pic: UIImage(named: "ThomasWuest")!, titel: "2. Vorsitzender", name: "Thomas Wüst")
var sandraNeuhart = Vorstand(pic: UIImage(named: "noPic")!, titel: "Kassenwart", name: "Sandra Neuhart")
var ronnieForstner = Vorstand(pic: UIImage(named: "noPic")!, titel: "1. Schriftführer", name: "Ronnie Forstner")
var christophPiecha = Vorstand(pic: UIImage(named: "christophPiecha")!, titel: "2. Schriftführer", name: "Christoph Piecha")
var stefanScheurer = Vorstand(pic: UIImage(named: "stefanScheurer")!, titel: "1. Gewässerwart", name: "Stefan Scheurer")
var svenButzinger = Vorstand(pic: UIImage(named: "svenButzinger")!, titel: "2. Gewässerwart", name: "Sven Butzinger")
var dennisLeonhart = Vorstand(pic: UIImage(named: "dennisLeonhart")!, titel: "3. Gewässerwart", name: "Dennis Leonhart")
var norbertKitt = Vorstand(pic: UIImage(named: "norbertKitt")!, titel: "Jugendwart", name: "Norbert Kitt")
var silvesterPfirrmann = Vorstand(pic: UIImage(named: "silvesterPfirrmann")!, titel: "Beisitzer", name: "Silvester Pfirrmann")
var manuelKloedy = Vorstand(pic: UIImage(named: "manuelKloedy")!, titel: "Beisitzer", name: "Manuel Klödy")
var christianFritz = Vorstand(pic: UIImage(named: "noPic")!, titel: "Beisitzer", name: "Christian Fritz")
var matthiasSahm = Vorstand(pic: UIImage(named: "matthiasSahm")!, titel: "Beisitzer", name: "Matthias Sahm")
var maikHandorf = Vorstand(pic: UIImage(named: "maikHandorf")!, titel: "Beisitzer", name: "Maik Handorf")
var stefanNeuhart = Vorstand(pic: UIImage(named: "noPic")!, titel: "Vorstandhelfer", name: "Stefan Neuhart")
var kaiSahm = Vorstand(pic: UIImage(named: "noPic")!, titel: "Vorstandhelfer", name: "Kai Sahm")
var manfredSchmitz = Vorstand(pic: UIImage(named: "manfredSchmitz")!, titel: "Ehrenvorsitzender", name: "Manfred Schmitz")



var vorstand_array: Array = [rolandHeilmann,thomasWuest,sandraNeuhart,ronnieForstner,christophPiecha,stefanScheurer,svenButzinger,dennisLeonhart,norbertKitt,silvesterPfirrmann,manuelKloedy,christianFritz,matthiasSahm,maikHandorf,stefanNeuhart,kaiSahm,manfredSchmitz]
