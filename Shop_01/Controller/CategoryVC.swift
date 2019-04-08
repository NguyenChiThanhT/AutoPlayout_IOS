//
//  ViewController.swift
//  Shop_01
//
//  Created by NGUYEN CHI THANH on 3/14/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProducCV", sender: category.title)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsCV = segue.destination as? ProductsVC {
            let btnBar = UIBarButtonItem()
            btnBar.title = ""
            navigationItem.backBarButtonItem = btnBar
             assert(sender as? String != nil)
            productsCV.initProduct(title: sender as! String)
        }
    }
    
}

