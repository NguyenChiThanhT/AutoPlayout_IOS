//
//  LoginResponse.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/20/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
import ObjectMapper

class LoginResponse: Mappable {
    var user: User?
    var auth: Auth?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        user <- map["user"]
        auth <- map["auth"]
    }
}
