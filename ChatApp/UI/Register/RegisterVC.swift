//
//  RegisterViewController.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/28/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePressed(_ sender: Any) {
          performSegue(withIdentifier: "unwindToChannel", sender: nil)
    }
    
}
