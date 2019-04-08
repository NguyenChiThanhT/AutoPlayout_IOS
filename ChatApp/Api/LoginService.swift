//
//  LoginService.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/20/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
import RxSwift
class LoginService:BaseService {
    // Sử dụng RxSwift
    static func loginRx(email:String,password:String) -> Observable<LoginResponse> {
        return requestJsonRx(api: .login(email: email, password: password)).map({ json in
            if let book = LoginResponse(JSON: json) {
                return book
            } else {
                throw ResponseError.invalidJSONFormat
            }
        })
    }
}
