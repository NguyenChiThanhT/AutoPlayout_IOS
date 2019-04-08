//
//  Category.swift
//  Shop_01
//
//  Created by NGUYEN CHI THANH on 3/14/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imgName: String
    
    init(title:String,imgName:String) {
        self.title = title
        self.imgName = imgName
    }
}
