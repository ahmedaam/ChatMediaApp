//
//  FeedVC.swift
//  ChatMediaApp
//
//  Created by ahmed LolOl on 9/23/17.
//  Copyright © 2017 ahmed LolOl. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper
import Firebase
class FeedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signOutButtonPressed(_ sender: Any) {
        
        let keychainRemoveResult = KeychainWrapper.standard.removeObject(forKey: KEY_UID)
        try! Auth.auth().signOut()
        print("Keychain remove result is \(keychainRemoveResult)")
        performSegue(withIdentifier: "goToSignIn", sender: nil)
    }
    

    
}
