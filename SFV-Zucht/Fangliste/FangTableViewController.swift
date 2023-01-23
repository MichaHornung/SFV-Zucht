//
//  FangTableViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 18.01.23.
//

import UIKit

class FangTableViewController: UITableViewController {
    
    

    fileprivate let FANGLISTECELL = "FanglisteCell"
    
    fileprivate var sections: [SectionData] = [
    SectionData(open: false,
                data: [""]),
    SectionData(open: false,
                data: [""]),
    SectionData(open: false,
                data: [""]),
    SectionData(open: false,
                data: [""]),
    SectionData(open: false,
                data: [""]),
    SectionData(open: false,
                data: [""]),
    SectionData(open: false,
                data: [""])]

    let fangliste = [""]
    
    var selectedIFangliste: String!

    override func viewDidLoad() {

        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(fangliste(_ :)), name: NSNotification.Name.init("de.ViewsWechseln.fangliste"), object: nil)
        
        navigationItem.title = "Fangliste"
//        contentView.backgroundColor = .orange
        
        setupTable()

    }
    @objc func fangliste(_ notifcation: NSNotification){
        if let fang = notifcation.object as? Fangliste{
            
            switch fang.gewaesser{
            case "Schauffele":
                sections[0].data.append(fang.fischart)
            case "Gemeideloch 1/2":
                sections[1].data.append(fang.fischart)
            case "Altrhein":
                sections[2].data.append(fang.fischart)
            case "Rathjens/Kiefer":
                sections[3].data.append(fang.fischart)
            case "Ritterhecke":
                sections[4].data.append(fang.fischart)
            case "Altwasser":
                sections[5].data.append(fang.fischart)
            case "Hörnel":
                sections[6].data.append(fang.fischart)
                
            default: break
                
            }
            
        }
    }
    
    
    
    
    
    fileprivate func setupTable() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "FanglisteCell")
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        performSegue(withIdentifier: "toFangliste", sender: self)
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
            button.setTitle("Schauffele", for: .normal)
        case 1:
            button.setTitle("Gemeindeloch 1/2", for: .normal)
        case 2:
            button.setTitle("Altrhein", for: .normal)
        case 3:
            button.setTitle("Rathjens/Kiefer", for: .normal)
        case 4:
            button.setTitle("Ritterhecke", for: .normal)
        case 5:
            button.setTitle("Altwasser", for: .normal)
        case 6:
            button.setTitle("Hörnel", for: .normal)
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

        let cell = tableView.dequeueReusableCell(withIdentifier: "FanglisteCell", for: indexPath)
        let section = sections[indexPath.section]
        
        cell.textLabel?.text = section.data[indexPath.row]
        cell.backgroundColor = .orange

        return cell
    }
    
    

  

}
