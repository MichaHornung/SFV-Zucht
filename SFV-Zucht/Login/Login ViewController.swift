//
//  ViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 17.12.22.
//

import UIKit

class LoginViewController: UIViewController {
    

    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginbutton: UIButton!

    var isValidLogin = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginbutton.isEnabled = false
        username.delegate = self
        password.delegate = self
        password.isSecureTextEntry = true
        

        
    }

    
    @IBAction func login(){
       
    if(isValidLogin){
            performSegue(withIdentifier: "toStartseite", sender: self)
        } else {
            let alert = UIAlertController(title: "Login fehlgeschlagen", message: "Bitte versuche es erneut", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Erneut versuchen", style: .cancel, handler: { _ in
                self.username.text = ""
                self.password.text = ""
                self.loginbutton.isEnabled = false
                alert.dismiss(animated: true)
            }))
            present(alert, animated: true)
        }
    }
    

}


extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    @IBAction func onTextChanged() {
        if(username.text?.count ?? 0 > 0 && password.text?.count ?? 0 > 0) {
            loginbutton.isEnabled = true
            if(username.text == "sfv.mitglied" && password.text == "SFVW1922") {
                isValidLogin = true
            } else {
                isValidLogin = false
            }
        }
    }
}

