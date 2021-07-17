//
//  LoginModel.swift
//  SimpleLogin
//
//  Created by Ali Ahmadian shalchi on 16/07/2021.
//

import Foundation


struct User {
    
    var name: String
    var mobileNumber: String
    var email: String
    var age: Int
    var gender: Gender
 
}

enum Gender: Int {
    
    case male = 0
    
    case female = 1
    
}

class LocalStorage {
    
    var user: User?
    static let `default` = LocalStorage()
    
    private init() {
        
        user = getUser()
    }
    
    // get the user from remote or from local, based on your business
    private func getUser() -> User? {

        return User(name: "Ali Ahmadian", mobileNumber: "0054something", email: "aliash@gmail.com", age: 29, gender: .male)
    }
}
