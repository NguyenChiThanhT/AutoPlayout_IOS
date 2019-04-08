//
//  BaseView.swift
//  app_food
//
//  Created by NGUYEN CHI THANH on 3/13/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

@IBDesignable class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    func configure() {
        
    }
}
