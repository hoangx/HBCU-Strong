//
//  SignUpViewController.swift
//  HBCU_Strong
//
//  Created by Tommy Hoang on 5/28/17.
//  Copyright © 2017 Tommy Hoang. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var profileImage: UIImageView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Profile image have round corners
        profileImage.layer.cornerRadius=40
        profileImage.clipsToBounds=true
        // Do any additional setup after loading the view.
    }
    
  
    
    @IBAction func dismiss_OnClick(_ sender: Any) { (dismiss(animated: true, completion: nil))
    }

    
}
