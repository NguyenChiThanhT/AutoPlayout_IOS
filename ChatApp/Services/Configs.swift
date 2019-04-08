//
//  Configs.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/19/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//
import Foundation

struct Production {
    static let BASE_URL: String = "http://moblaze.net/service_login/"
}

enum NetworkErrorType {
    case API_ERROR
    case HTTP_ERROR
}

