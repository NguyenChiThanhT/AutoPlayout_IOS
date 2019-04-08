//
//  AuthService.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/18/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
class AuthService {
    
      static let instance = AuthService()
    
       let defaults = UserDefaults.standard
    
    var isLoggedIn : Bool {
        get{
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get{
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            return defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
}
