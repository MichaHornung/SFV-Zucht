//
//  FanglisteHinzufügenViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 06.01.23.
//

import UIKit

class FanglisteHinzufu_genViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    @IBOutlet weak var tableview: UITableView!
    
    var fangliste: Fangliste!
        var gewaesser: String!
    
    let Karpfen = [""]
    var karpfen = [
    Fangliste(datum: "", fischart: "", gewicht: "", stueckzahl: "")]
    
    let Schleie = [""]
    var schleie = [
    Fangliste(datum: "", fischart: "", gewicht: "", stueckzahl: "")]
    
    let Aal = [""]
    var aal = [
    Fangliste(datum: "", fischart: "", gewicht: "", stueckzahl: "")]
    
    let Hecht = [""]
    var hecht = [
    Fangliste(datum: "", fischart: "", gewicht: "", stueckzahl: "")]
    
    let Zander = [""]
    var zander = [
    Fangliste(datum: "", fischart: "", gewicht: "", stueckzahl: "")]
    
    let Barsch = [""]
    var barsch = [
    Fangliste(datum: "", fischart: "", gewicht: "", stueckzahl: "")]
    
    var selectedFische: Fangliste!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         selectedFische = karpfen[indexPath.row]
        
        switch indexPath.section{
        case 0:  selectedFische = karpfen[indexPath.row]
        case 1:  selectedFische = schleie[indexPath.row]
        case 2:  selectedFische = aal[indexPath.row]
        case 3:  selectedFische = hecht[indexPath.row]
        default: break
      
        }
        performSegue(withIdentifier: "", sender: self)
    }
    
     func numberOfSections(in fanglistetableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0: return karpfen.count
        case 1: return schleie.count
        case 2: return aal.count
        case 3: return hecht.count
        default:
            return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let FanglisteCell = tableView.dequeueReusableCell(withIdentifier: "FanglisteCell", for: indexPath)
       
        var fischeNamen: String
        switch indexPath.section{
        case 0:
            fischeNamen = karpfen[indexPath.row].datum
        case 1:
            fischeNamen = schleie[indexPath.row].datum
        case 2:
            fischeNamen = aal[indexPath.row].datum
        case 3:
            fischeNamen = hecht[indexPath.row].datum
        default:
            fischeNamen = ""
        }
        
        var content = FanglisteCell.defaultContentConfiguration()
        content.text = fischeNamen
        
        FanglisteCell.contentConfiguration = content
        
        return FanglisteCell
    }
 
    
    
 
        
    
     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Karpfen"
        case 1:
            return "Schleie"
        case 2:
            return "Aal"
        case 3:
            return "Hecht"
        default:
            return nil
        }
    }
}
