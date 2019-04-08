//
//  SendCollectionViewCell.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/20/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

protocol CollectionViewCellDelegate: class {
    func showAlert(_ cell: UICollectionViewCell, _ message: String)
}

class SendCollectionViewCell: UICollectionViewCell,UITableViewDataSource,UITableViewDelegate{
    
    var count:Int?
    weak var delegate: CollectionViewCellDelegate?
    @IBOutlet weak var tbview: UITableView!
    
    func updateHIHI(count:Int){
        tbview.dataSource = self
        tbview.delegate = self
        self.count = count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as! CategoryCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.delegate?.showAlert(self, "your message \(indexPath.row) of \(String(describing: count!))")
    }
}
