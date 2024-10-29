//
//  ViewController.swift
//  AutoLayout1
//
//  Created by Apple on 25/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tfPassword.isSecureTextEntry = true
        
    }

    @IBAction func btnLogin(_ sender: Any) {
        if(checkEmail() == true && checkPassword()) {
            print("successs")
        }
    }
    
    func checkEmail() -> Bool {
        if let email = tfEmail.text, email.count > 10 {
            print("")
            return true
        } else {
            print("Text must has more than 10 chars")
            return false
        }
    }
    
    func checkPassword() -> Bool {
        if let password = tfPassword.text, password.count > 3 {
            print("")
            return true
        } else {
            print("password must hass more than 3 chars")
            return false
        }
    }
}

