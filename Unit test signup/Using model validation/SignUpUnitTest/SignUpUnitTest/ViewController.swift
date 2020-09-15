//
//  ViewController.swift
//  SignUpUnitTest
//  
//  Created by Jony on 15/08/20.
//  Copyright © 2020 Jony. All rights reserved.
//  https://www.appsdeveloperblog.com/swift-unit-test-of-user-registration-model/

import UIKit

class ViewController: UIViewController {
    let firstName = "Testing"
    let lastName = "Kargopolov"
    let email = "test@test.com"
    let password = "12345678"
    let confirmPassword = "12345678"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func userRegistrationDataModel() -> UserRegistrationModel  {
        let userRegistrationModel = UserRegistrationModel(firstName: firstName, lastName: lastName, email: email, password: password, confirmPassword: confirmPassword)
        return userRegistrationModel
    }
}

