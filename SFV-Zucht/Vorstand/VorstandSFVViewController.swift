//
//  VorstandSFVViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 18.12.22.
//

import UIKit

class VorstandSFVTableViewController: UIViewController, UITableViewDataSource {
    
    

    @IBOutlet weak var vorstand: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vorstand.dataSource = self
        
        
       
    }

        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vorstand_array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = vorstand.dequeueReusableCell(withIdentifier: "vorstandCell", for: indexPath)
        
        var vorstandmitglied = cell.defaultContentConfiguration()
        
        vorstandmitglied.text = vorstand_array[indexPath.row].titel
        vorstandmitglied.secondaryText = vorstand_array[indexPath.row].name
        vorstandmitglied.image = vorstand_array[indexPath.row].pic
        vorstandmitglied.imageProperties.maximumSize = CGSize(width: 2800,height: 157.5)
        cell.contentConfiguration = vorstandmitglied
        
        
        return cell
    }
}
