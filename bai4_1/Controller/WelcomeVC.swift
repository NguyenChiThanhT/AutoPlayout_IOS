//
//  ViewController.swift
//  bai4_1
//
//  Created by NGUYEN CHI THANH on 3/13/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgimg: UIImageView!
    
   
    @IBAction func goBack(unwindSegue:UIStoryboardSegue){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        swoosh.frame = CGRect(
//            x: view.frame.size.width / 2 - swoosh.frame.size.width / 2,
//            y: 50,
//            width: swoosh.frame.size.width,
//            height: swoosh.frame.size.height)
//        
//        bgimg.frame = view.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

