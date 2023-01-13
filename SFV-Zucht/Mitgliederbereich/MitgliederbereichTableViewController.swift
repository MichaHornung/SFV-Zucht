//
//  Mitgliederbereich TableViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 04.01.23.
//

import UIKit

class Mitgliederbereich_TableViewController: UITableViewController {
    
    fileprivate let MITGLIEDERCELL = "MitgliederCell"
    
    fileprivate var sections: [SectionData] = [
    SectionData(open: false,
                data: ["2023", "2022", "2021", "2020", "2019", "2018"]),
    SectionData(open: false,
                data: ["2023", "2022", "2021", "2020", "2019", "2018"]),
    SectionData(open: false,
                data: ["Characeen - Armleuchteralgen"]),
    SectionData(open: false,
                data: ["Boote Kiefer - Rathjens", "Standbau am Altwasser", "Zutrittregelung Schauffele ab 2017", "Tabuzonen Schauffele ab 2018", "Gästekarte"]),
    SectionData(open: false,
                data: ["SFV Antragsformular Bootskarte Kiefer-Rathjens", "Datenschutzhinweise nach DSGVO des SFV Wörth"]),
    SectionData(open: false,
                data: ["Satzung SFV"])]

    let mitgliederbereich = [""]
    
    var selectedIMitgliederbereich: String!

    override func viewDidLoad() {

        super.viewDidLoad()
        
        navigationItem.title = "Mitgliederbereich"
//        contentView.backgroundColor = .orange
        
        setupTable()

    }
    fileprivate func setupTable() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MitgliederCell")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = segue.destination as? MitgliederbereichViewController


    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        performSegue(withIdentifier: "toMitgliederbereich", sender: self)
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
     
        return sections.count
        
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        
          
        let button = UIButton()
        button.tag = section
        button.setTitleColor(.cyan, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)

        button.addTarget(self, action: #selector(self.openSection), for: .touchUpInside)
       
        
        
        switch section{
        case 0:
            button.setTitle("Einladungen", for: .normal)
        case 1:
            button.setTitle("Rundschreiben", for: .normal)
        case 2:
            button.setTitle("Berichte", for: .normal)
        case 3:
            button.setTitle("Regelungen", for: .normal)
        case 4:
            button.setTitle("Downloads", for: .normal)
        case 5:
            button.setTitle("Satzung SFV", for: .normal)
        default:
            return button
        

        }
     
        
        return button
    }
    @objc fileprivate func openSection(button: UIButton){
        let section = button.tag
        sections[section].open = !sections[section].open
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !sections[section].open{
            return 0
        }

        return sections[section].data.count
            
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "MitgliederCell", for: indexPath)
        let section = sections[indexPath.section]
        
        cell.textLabel?.text = section.data[indexPath.row]
        cell.backgroundColor = .orange

        return cell
    }
    
    

  

}
