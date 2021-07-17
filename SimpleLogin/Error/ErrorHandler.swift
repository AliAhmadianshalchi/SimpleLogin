//
//  ErrorHandler.swift
//  SimpleLogin
//
//  Created by Ali Ahmadian shalchi on 16/07/2021.
//

import Foundation

enum UpdateProfileFormError: Error {
    case emptyName
    case invalidMobileNumber
    case invalidEmailAddress
    case veryYoung
    
    var localizedDescription: String {
        
        switch self {
        case .emptyName:
            return "Please, enter your name"
        case .invalidMobileNumber:
            return "Please, enter a valid mobile number"
        case .invalidEmailAddress:
            return "Please, enter a valid email address"
        case .veryYoung:
            return "Minimum age should be 18"
        }

    }
}
