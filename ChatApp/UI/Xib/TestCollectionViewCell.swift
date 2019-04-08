//
//  TestCollectionViewCell.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/21/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

protocol collectionDelegateHi: class {
    func showAlert(mess:String)
}
class TestCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var tbvFileXib: UITableView!
    weak var showAlertInter:collectionDelegateHi?
    var count:Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tbvFileXib.dataSource = self
        tbvFileXib.delegate = self
    }

}
extension TestCollectionViewCell: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TestTableViewCell", owner: nil, options: nil)?.first as! TestTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         self.showAlertInter?.showAlert(mess: "your message \(indexPath.row) of \(String(describing: count!))")
    }
    
    
}
