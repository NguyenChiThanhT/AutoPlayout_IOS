//
//  Products.swift
//  Shop_01
//
//  Created by NGUYEN CHI THANH on 3/15/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
struct Product {
    private(set) public var imgName:String
    private(set) public var title:String
    private(set) public var price:String
    
    init(title:String,price:String,imgName:String) {
        self.title = title
        self.price = price
        self.imgName = imgName
    }
}
