//
//  LoginViewController.swift
//  SmartOffice
//
//  Created by Pradeep on 26/04/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    private var loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loginViewModel.delegate = self
    }

    @IBAction func didTapOnLoginButton(_ sender: Any) {
        
        let request = LoginRequest(userEmail: userName.text, userPassword: password.text)
        loginViewModel.loginUser(loginRequest: request)
    }
    
    
}
