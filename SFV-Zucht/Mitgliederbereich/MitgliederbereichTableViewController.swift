//
//  Mitgliederbereich TableViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 04.01.23.
//

import UIKit

class Mitgliederbereich_TableViewController: UITableViewController {

    let mitgliederbereich = [
    "Einladungen","Rundschreiben","Berichte","Regelungen","Downloads","Satzung SFV"]
    
    var selectedIMitgliederbereich: String!

    override func viewDidLoad() {

        super.viewDidLoad()


    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as? MitgliederbereichViewController

        destinationViewController?.mitgliederbereich = selectedIMitgliederbereich!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIMitgliederbereich = mitgliederbereich[indexPath.row]
        
        performSegue(withIdentifier: "toMitgliederbereich", sender: self)
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      

        return mitgliederbereich.count
            
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "MitgliederCell", for: indexPath)

        var mitgliederbereiche = cell.defaultContentConfiguration()

        mitgliederbereiche.text = mitgliederbereich[indexPath.row]
        cell.contentConfiguration = mitgliederbereiche


        return cell
    }
    
    

  

}
