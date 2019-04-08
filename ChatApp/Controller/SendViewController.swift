//
//  SendViewController.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/20/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class SendViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,CollectionViewCellDelegate {
    
    @IBOutlet weak var sendclv: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendclv.dataSource = self
        sendclv.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SendCollectionViewCell
        
        cell.updateHIHI(count: indexPath.row)
        cell.delegate = self
        return cell
    }
    
    func showAlert(_ cell: UICollectionViewCell, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 300, height: 200)
//    }
    
   

}
