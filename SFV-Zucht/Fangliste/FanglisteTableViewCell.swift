//
//  FanglisteTableViewCell.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 12.01.23.
//

import UIKit

class FanglisteTableViewCell: UITableViewCell {
    
   
    

    @IBOutlet weak var datum: UILabel!
    @IBOutlet weak var fisch: UILabel!
    @IBOutlet weak var gewicht: UILabel!
    @IBOutlet weak var stueck: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      }
}
