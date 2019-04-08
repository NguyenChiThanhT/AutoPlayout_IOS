//
//  LoginBody.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/19/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
class LoginParam: ApiParam {
    var email:String?
    var password:String?
    
    init(email:String,password:String) {
        self.email = email
        self.password = password
    }
    func toParams() -> [String : Any] {
            return[
                "email": email ?? "",
                "password": password ?? ""
        ]
    }
}
