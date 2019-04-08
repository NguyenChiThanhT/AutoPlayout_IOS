//
//  ApiParam.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/19/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
protocol ApiParam {
    func toParams() ->[String:Any]
}

