//
//  FishAPITableViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 01.02.23.
//

import UIKit

class FishAPITableViewController: UITableViewController {

    var fischliste = [FishElement]()
    override func viewDidLoad() {
        super.viewDidLoad()

let networkController = NetworkController()
        networkController.fetchFish { fische in
            self.fischliste = fische
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fischliste.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toApi", for: indexPath)

        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        content.text = fischliste[indexPath.row].name
        
        cell.contentConfiguration = content

        return cell
    }
    


}
