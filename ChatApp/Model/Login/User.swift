//
//  User.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/20/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
import ObjectMapper

class User:Mappable {
    var id:String?
    var role_id:Int?
    var fullname:String?
    var status: String?
    var created_at: String?
    var updated_at: String?
    var email: String?
    var password:String?
    
   required init(map:Map) {
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        role_id <- map["role_id"]
        fullname <- map["fullname"]
        status <- map["status"]
        created_at <- map["created_at"]
        updated_at <- map["updated_at"]
        email <- map["email"]
        password <- map["password"]
    }
}
