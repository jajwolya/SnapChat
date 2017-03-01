//
//  LogInViewController.swift
//  SnapChat
//
//  Created by trioxis on 1/3/17.
//  Copyright © 2017 trioxis. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LogInViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        FIRAuth.auth()?.signIn(withEmail: usernameField.text!, password: passwordField.text!, completion: { (user, error) in
            print("Logging in...")
            if error != nil {
                print("Error: \(String(describing: error))")
                
                FIRAuth.auth()?.createUser(withEmail: self.usernameField.text!, password: self.passwordField.text!, completion: { (user, error) in
                    print("Creating user...")
                    
                    if error != nil {
                        print("Error: \(String(describing: error))")
                    } else {
                        print("User created")
                        self.performSegue(withIdentifier: "loginSegue", sender: nil)
                    }
                })
                
            } else {
                print("Log in successful")
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
        })
    }
    
}

