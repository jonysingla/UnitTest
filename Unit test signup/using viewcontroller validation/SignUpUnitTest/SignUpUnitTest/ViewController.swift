//
//  ViewController.swift
//  SignUpUnitTest
//  
//  Created by Jony on 15/08/20.
//  Copyright © 2020 Jony. All rights reserved.
//  https://www.appsdeveloperblog.com/swift-unit-test-of-user-registration-model/

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func isFirstNameValidation() -> UserRegistrationModel  {
        let userRegistrationModel = UserRegistrationModel(firstName: "Test", lastName: " Testing", email: "tesr@gmail.com", password: "123456", confirmPassword: "123456")
        return userRegistrationModel
    }
    
    func isValidFirstName(userRegistrtionModel: UserRegistrationModel)  {
        
        if  userRegistrtionModel.firstName.count == 0 && userRegistrtionModel.lastName.count == 0 && userRegistrtionModel.email.count == 0 && userRegistrtionModel.password.count == 0  &&  userRegistrtionModel.confirmPassword.count == 0   {
            CustomAlert.showAlertMsg(message: "Please Enter Your Detail", viewController: self)
        }
        else if userRegistrtionModel.firstName.count == 0 || userRegistrtionModel.lastName.count == 0 || userRegistrtionModel.email.count == 0 || userRegistrtionModel.password.count == 0 ||  userRegistrtionModel.confirmPassword.count == 0 {
            
            if userRegistrtionModel.firstName.count == 0 {
                CustomAlert.showAlertMsg(message: "Please enter first name ", viewController: self)
            }
            else if(userRegistrtionModel.lastName.count == 0) {
                CustomAlert.showAlertMsg(message: "Please enter user name ", viewController: self)
            }
            else if(userRegistrtionModel.email.count == 0) {
                CustomAlert.showAlertMsg(message: "Please enter an email address ", viewController: self)
            }
            else if(userRegistrtionModel.password.count == 0) {
                CustomAlert.showAlertMsg(message: "Please enter mobile number ", viewController: self)
            }
            else if(userRegistrtionModel.confirmPassword.count == 0) {
                CustomAlert.showAlertMsg(message: "Please enter password ", viewController: self)
            }
        }
            
        else if(!Validation.isValidEmail(emailAddressString: userRegistrtionModel.email)) {
            CustomAlert.showAlertMsg(message: "Please enter valid email address", viewController: self)
        }
        else if(!Validation.isPasswordValidation(passwordValidation: userRegistrtionModel.password)) {
            CustomAlert.showAlertMsg(message: "Password should be minimum 6 and maximum 15 character at least 1 Uppercase Alphabet, 1 Lowercase Alphbet, 1 Number and 1 Special Character", viewController: self)
        }
        else if(userRegistrtionModel.password != userRegistrtionModel.confirmPassword) {
            CustomAlert.showAlertMsg(message: "Password and re-enter Password does not matches. ", viewController: self)
        }
    }
}

