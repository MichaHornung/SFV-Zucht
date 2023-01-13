//
//  Fangliste  TableViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 04.01.23.
//

import UIKit

class Fangliste__TableViewController: UITableViewController {
    
    let gewaesser = [
    "Schauffele","Gemeindeloch 1/2","Altrhein","Rathjens/Kiefer","Ritterhecke","Altwasser","Hörnel"]
    
    var selectedGewaesser: String!

    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        super.viewDidLoad()
      


    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as? FanglisteHinzufu_genViewController
        
        destinationViewController?.gewaesser = selectedGewaesser!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedGewaesser = gewaesser[indexPath.row]
        
        performSegue(withIdentifier: "toFangliste", sender: self)
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      

        return gewaesser.count
            
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FanglisteCell", for: indexPath)
        
        var fangliste = cell.defaultContentConfiguration()
        
        fangliste.text = gewaesser[indexPath.row]
        cell.contentConfiguration = fangliste
        
        
        return cell
    }
    
    

  

}
