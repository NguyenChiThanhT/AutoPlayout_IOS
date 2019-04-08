//
//  LoginViewController.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/28/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loginUser(_ sender: Any) {
    }
    
    @IBAction func toCreateAccount(_ sender: Any) {
            performSegue(withIdentifier: "toRegister", sender: nil)
    }
    
}
