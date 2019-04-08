//
//  ProductsVC.swift
//  Shop_01
//
//  Created by NGUYEN CHI THANH on 3/15/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
   
    @IBOutlet weak var productClV:UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productClV.dataSource = self
        productClV.delegate = self
        
    }
    
    func initProduct(title:String) {
        navigationItem.title = title
        products = DataService.instance.getProducts(forTitleProducts: title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
             let product = products[indexPath.row]
            cell.updateView(product: product)
            
            return cell
        }
        return ProductCell()
    }

}
