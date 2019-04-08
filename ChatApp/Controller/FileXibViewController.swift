//
//  FileXibViewController.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/21/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class FileXibViewController: UIViewController{
   

    @IBOutlet weak var fileCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fileCollectionView.dataSource = self
        fileCollectionView.delegate = self
        fileCollectionView.register(UINib.init(nibName: "TestCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TestCollectionViewCell")
    }
}

extension FileXibViewController: UICollectionViewDataSource,UICollectionViewDelegate,collectionDelegateHi {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
           cell.showAlertInter = self
           cell.count = indexPath.row
        return cell
    }
    
    func showAlert(mess: String) {
        let alert = UIAlertController(title: title, message: mess, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
