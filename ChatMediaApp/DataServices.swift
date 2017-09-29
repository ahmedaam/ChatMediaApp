//
//  DataServices.swift
//  ChatMediaApp
//
//  Created by ahmed LolOl on 9/26/17.
//  Copyright © 2017 ahmed LolOl. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()


// i did not input anything in the database section in Firebase.com


class DataService {
    
    static let ds = DataService()
    
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_POSTS = DB_BASE.child("posts")
    
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_POSTS: DatabaseReference {
        return _REF_POSTS
    }
    
    func createFirebaseDBUser(uid:String, userData: Dictionary<String, String>) {
        
        REF_USERS.child(uid).updateChildValues(userData)
        
    }
    
    
}
