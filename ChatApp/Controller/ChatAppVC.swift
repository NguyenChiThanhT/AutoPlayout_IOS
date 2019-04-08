//
//  ChatAppVC.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/18/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import UIKit

class ChatAppVC: UIViewController {

    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

    
    @IBAction func loadFileXib(_ sender: Any) {
         let loginVC = LoginViewController(nibName: "LoginViewController",bundle: nil)
         self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @IBAction func sendUser(_ sender: Any) {
            performSegue(withIdentifier: "sendUser", sender: nil)
    }
    
    @IBAction func fileXib(_ sender: Any) {
    }
    
}
