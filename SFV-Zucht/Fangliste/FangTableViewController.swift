//
//  FangTableViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 18.01.23.
//

import UIKit



class FangTableViewController: UITableViewController {
    
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
//    let schauffele = [
//        "Karpfen",
//        "Hecht",
//        "Zander",
//        "Aal"]
//    var schauffeleGewaesser = [
//        Fangliste(gewaesser: "", datum: "01.01.2023", fischart: "Karpfen", gewicht: "12,4", stueckzahl: "1")]
//
//    var selectedFangliste: Fangliste!
    
    

    fileprivate let FANGLISTECELL = "FanglisteCell"
    
    fileprivate var sections: [SectionDataFangliste] = [
        SectionDataFangliste(open: false,
                data: []),
        SectionDataFangliste(open: false,
                data: []),
        SectionDataFangliste(open: false,
                data: []),
        SectionDataFangliste(open: false,
                data: []),
        SectionDataFangliste(open: false,
                data: []),
        SectionDataFangliste(open: false,
                data: []),
        SectionDataFangliste(open: false,
                data: [])]

    let fangliste = [""]
    
    var selectedIFangliste: String!

    override func viewDidLoad() {

        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(fangliste(_ :)), name: NSNotification.Name.init("fangliste"), object: nil)
        
        navigationItem.title = "Fangliste"
//        contentView.backgroundColor = .orange
        
      
        

        

    }
//    Laden der Daten von CoreData
    func loadData(){
        let coreDataDaten = try! appdelegate.persistentContainer.viewContext.fetch(Fanglisten.fetchRequest())
        sections[0].data = []
        sections[1].data = []
        sections[2].data = []
        sections[3].data = []
        sections[4].data = []
        sections[5].data = []
        sections[6].data = []
        for daten in coreDataDaten{
           
            switch daten.gewaesser{
            case "Schauffele":
                sections[0].data.append(daten)
            case "Gemeindeloch 1/2":
                sections[1].data.append(daten)
            case "Altrhein":
                sections[2].data.append(daten)
            case "Rathjens/Kiefer":
                sections[3].data.append(daten)
            case "Ritterhecke":
                sections[4].data.append(daten)
            case "Altwasser":
                sections[5].data.append(daten)
            case "Hörnel":
                sections[6].data.append(daten)
                default: break
                
            }
        }
            
        
    }
    
    @objc func fangliste(_ notifcation: NSNotification){
   loadData()
        tableView.reloadData()
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

        let cell = tableView.dequeueReusableCell(withIdentifier: "FanglisteCell", for: indexPath) as! FanglisteTableViewCell
        let section = sections[indexPath.section]
        
       

        switch indexPath.section{
        case 0:
            cell.datum.text = sections[0].data[indexPath.row].datum
            cell.fisch.text = sections[0].data[indexPath.row].fischart
            cell.gewicht.text = sections[0].data[indexPath.row].gewicht
            cell.stueck.text = sections[0].data[indexPath.row].stueckzahl
           
            cell.backgroundColor = .orange
        case 1:
            cell.datum.text = sections[1].data[indexPath.row].datum
            cell.fisch.text = sections[1].data[indexPath.row].fischart
            cell.gewicht.text = sections[1].data[indexPath.row].gewicht
            cell.stueck.text = sections[1].data[indexPath.row].stueckzahl
            cell.backgroundColor = .orange
        case 2:
            cell.datum.text = sections[2].data[indexPath.row].datum
            cell.fisch.text = sections[2].data[indexPath.row].fischart
            cell.gewicht.text = sections[2].data[indexPath.row].gewicht
            cell.stueck.text = sections[2].data[indexPath.row].stueckzahl
            cell.backgroundColor = .orange
        case 3:
            cell.datum.text = sections[3].data[indexPath.row].datum
            cell.fisch.text = sections[3].data[indexPath.row].fischart
            cell.gewicht.text = sections[3].data[indexPath.row].gewicht
            cell.stueck.text = sections[3].data[indexPath.row].stueckzahl
            cell.backgroundColor = .orange
        case 4:
            cell.datum.text = sections[4].data[indexPath.row].datum
            cell.fisch.text = sections[4].data[indexPath.row].fischart
            cell.gewicht.text = sections[4].data[indexPath.row].gewicht
            cell.stueck.text = sections[4].data[indexPath.row].stueckzahl
            cell.backgroundColor = .orange
        case 5:
            cell.datum.text = sections[5].data[indexPath.row].datum
            cell.fisch.text = sections[5].data[indexPath.row].fischart
            cell.gewicht.text = sections[5].data[indexPath.row].gewicht
            cell.stueck.text = sections[5].data[indexPath.row].stueckzahl
            cell.backgroundColor = .orange
        case 6:
            cell.datum.text = sections[6].data[indexPath.row].datum
            cell.fisch.text = sections[6].data[indexPath.row].fischart
            cell.gewicht.text = sections[6].data[indexPath.row].gewicht
            cell.stueck.text = sections[6].data[indexPath.row].stueckzahl
            cell.backgroundColor = .orange
        default:
            return cell
        

        }
        
        return cell
    }
    
    

  

}
