//
//  ViewController.swift
//  Note
//
//  Created by Rafał Swat on 29/05/2019.
//  Copyright © 2019 Rafał Swat. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordtextField: UITextField!
    @IBOutlet weak var LogRegButton: UIButton!
    @IBOutlet weak var LogRegSegmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LogRegSegmentControlSwitch(_ sender: Any) {
        if LogRegSegmentControl.selectedSegmentIndex == 0 {
            
            LogRegButton.setTitle("Log In", for: UIControl.State.normal)
        } else {
            
            LogRegButton.setTitle("Registration", for: UIControl.State.normal)
        }
    }
    
    @IBAction func LogRegButtonPressed(_ sender: UIButton) {
        
        if emailTextField.text != "" && passwordtextField.text != "" {
            
            if LogRegSegmentControl.selectedSegmentIndex == 0 {

                //Login segment
                Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordtextField.text!) {
                    (user, error) in
                    
                    if user != nil {
                        // show some details from user
                        
                    } else {
                        
                        if let specificError = error?.localizedDescription {
                            print(specificError)
                        } else {
                            print("Error:  can`t login!")
                        }
                    }
                }
            } else {
                
                //Signup segment
                Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordtextField.text!) {
                    (user, error) in
                    
                    if user != nil {
                        // show some details from user
                        
                    } else {
                        
                        if let specificError = error?.localizedDescription {
                            print(specificError)
                        } else {
                            print("Error:  can`t register!")
                        }
                    }
                    
                }
                
            }
        }
    }
    
}

