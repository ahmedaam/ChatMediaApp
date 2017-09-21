//
//  ViewController.swift
//  ChatMediaApp
//
//  Created by ahmed LolOl on 9/16/17.
//  Copyright © 2017 ahmed LolOl. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase

class LogInVC: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

   
    @IBAction func fbBtnPressed(_ sender: Any) {
        let facebookLogin = FBSDKLoginManager()
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Facebook Error \(String(describing: error))")
            } else if result?.isCancelled == true {
                print("User Cancelled FB Authentication")
            } else {
                print("Successfully authenticated")
                let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    }
    
    func firebaseAuth(_ credential: AuthCredential) {
        Auth.auth().signIn(with: credential) { (user, error) in
            if error != nil {
                print("Something went wrong with Firebase \(String(describing: error))")
            } else {
                print("Firebase Auth Successful!")
            }
        }
    }
    
    @IBAction func signInBtnPressed(_ sender: Any) {
        if let email = emailField.text, let password = passwordField.text {
            Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
                if error == nil {
                    print("Email authenticated with Firebase")
                } else {
                    Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
                        if error != nil {
                            print("Unable to authenticate email with Firebase")
                        } else {
                            print("Successfully authenticated email with Firebase this time!")
                        }
                    })
                }
            })
        }
        
    }
    
    
    
    

}

