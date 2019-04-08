//
//  DetialsFoodView.swift
//  app_food
//
//  Created by NGUYEN CHI THANH on 3/13/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit
import MapKit
@IBDesignable class DetialsFoodView: BaseView {
    @IBOutlet weak var collectionView : UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var hoursLabel : UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var ratingsLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func handleControll(_sender: UIPageControl) {
        
    }
}
