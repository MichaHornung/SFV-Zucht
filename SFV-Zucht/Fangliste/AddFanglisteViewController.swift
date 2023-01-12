//
//  AddFanglisteViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 04.01.23.
//

import UIKit

class AddFanglisteViewController: UIViewController {

    
    @IBOutlet weak var datum: UITextField!
    @IBOutlet weak var fischart: UITextField!
    @IBOutlet weak var gewicht: UITextField!
    @IBOutlet weak var stueckzahl: UITextField!
    
    let fische = ["Karpfen", "Schleie", "Aal", "Hecht", "Zander", "Barsch"]
    let stueckzahlen = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    var pickerFische: UIPickerView!
    var pickerStk: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                
        
        // Erstellt den Picker
       
        pickerFische = UIPickerView(frame: CGRectMake(0, 0, view.frame.width, 200))
        pickerFische.backgroundColor = .orange
        pickerFische.delegate = self
        pickerFische.dataSource = self
        
       
        pickerStk = UIPickerView(frame: CGRectMake(0, 0, view.frame.width, 200))
        pickerStk.backgroundColor = .orange
        pickerStk.delegate = self
        pickerStk.dataSource = self

        // Erstellt die Toolbar für den Picker
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = .black
        toolBar.sizeToFit()

        // Fügt einen Done Button zur Toolbar hinzu
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(self.donePicker))
        toolBar.setItems([doneButton], animated: false)

        // Sorgt dafür das Picker und Toolbar sichtbar werden wennn das Textfeld geklickt wird
        fischart.inputView = pickerFische
        fischart.inputAccessoryView = toolBar
        stueckzahl.inputView = pickerStk
        stueckzahl.inputAccessoryView = toolBar
        datum.inputAccessoryView = toolBar
        gewicht.inputAccessoryView = toolBar
        
        // PickerView soll am anfang versteckt sein (erst sichtbar wenn aufs Textfeld gedrückt wurde)
    }
    
    // Picker soll verschwinden wenn auf "Done" geklickt wurde
    @objc func donePicker() {
        fischart.resignFirstResponder()
        stueckzahl.resignFirstResponder()
        datum.resignFirstResponder()
        gewicht.resignFirstResponder()
    }

}

// MARK: - Der Code für die PickerView

extension AddFanglisteViewController:UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // Gibt an wie viele Spalten unser Picker hat, in diesem Beispiel zwei, eine für die Fische und eine für die Einheit
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // Gibt an wie viele Reihen die Spalte hat
        switch pickerView{
            case pickerFische: return fische.count
            case pickerStk: return stueckzahlen.count
        default: return 0
        }
     
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // Gibt an was im Picker stehen soll (in diesem Beispiel in der ersten Spalte die Fische und in der zweiten die Einheiten)
        switch pickerView{
        case pickerFische: return fische[row]
        case pickerStk: return stueckzahlen[row]
        default: return ""
        }
     
    }
    
    // Setzt den Text ins textfeld, etwas kompliziertet da wir hierfür den String den auseinander nehmen müssen, frag für zusätzliche Erklärung hierzu gerne noch mal nach
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        switch pickerView{
            
        case pickerFische: fischart.text = fische[row]
        case pickerStk: stueckzahl.text = stueckzahlen[row]
        default: return
        }
        
    }
    
}


