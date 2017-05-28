//
//  SignUpViewController.swift
//  HBCU_Strong
//
//  Created by Tommy Hoang on 5/28/17.
//  Copyright © 2017 Tommy Hoang. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

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
    }
    
  
    
    @IBAction func dismiss_OnClick(_ sender: Any) { (dismiss(animated: true, completion: nil))
    }

    @IBAction func signUpBtn_TouchUpInside(_ sender: Any) {
        
       Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!,completion: {(user: User, error:Error!) in
            if error != nil{
                print(error.localizedDescription)
                return
            }
        let ref = Database.database().reference()
        let usersReference = ref.child("user")
        //print(usersReference.description()) : https://hbcustrong-e587c.firebaseio.com/users
        let uid = user.uid
        let newUserReference = usersReference.child(uid)
        newUserReference.setValue(["username" : self.usernameTextField.text!, "email" : self.emailTextField.text!])
        print(" description: \(newUserReference.description)()")
        })
        
    }
    
}
