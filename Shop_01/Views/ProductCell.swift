//
//  ProductCell.swift
//  Shop_01
//
//  Created by NGUYEN CHI THANH on 3/15/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var imgName: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func updateView(product:Product){
        imgName.image = UIImage(named: product.imgName)
        title.text = product.title
        price.text = product.price
    }
}
