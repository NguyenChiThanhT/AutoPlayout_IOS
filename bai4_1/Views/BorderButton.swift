//
//  BorderButton.swift
//  bai4_1
//
//  Created by NGUYEN CHI THANH on 3/13/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
  
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
