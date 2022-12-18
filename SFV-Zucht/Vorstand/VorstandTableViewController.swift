//
//  VorstandsTableViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 18.12.22.
//

import UIKit

class VorstandTableViewController: UIViewController, UITableViewDataSource {
    
    

    @IBOutlet weak var name: UITableView!
    @IBOutlet weak var titel: UITableView!
    @IBOutlet weak var emailadresse: UITableView!
    @IBOutlet weak var telefonnummer: UITableView!
    
    var vorstand: Vorstand!
    
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
        vorstandmitglied.text = vorstand_array[indexPath.row].name
        vorstandmitglied.text = vorstand_array[indexPath.row].emailadresse
        vorstandmitglied.text = vorstand_array[indexPath.row].telefonnummer
        vorstandmitglied.imageProperties.maximumSize = CGSize(width: 2800,height: 157.5)
        vorstandmitglied.pic = vorstand_array[indexPath.row].pic
        
        return cell
    }
}
