//
//  UserRegistrationModel.swift
//  SignUpUnitTest
//
//  Created by Jony on 15/08/20.
//  Copyright © 2020 Jony. All rights reserved.
//

import Foundation

struct UserRegistrationModel  {
    var firstName: String
    var lastName: String
    var email: String
    var password: String
    var confirmPassword: String
    
    init(firstName: String, lastName: String, email: String, password: String, confirmPassword: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.confirmPassword = confirmPassword
    }
}

extension UserRegistrationModel {
    func isValidFirstName() -> Bool {
        return firstName.count >= 3 && firstName.count <= 16
    }
    
    func isValidLastName() -> Bool {
        return lastName.count >= 3 && lastName.count <= 16
    }
    
    func isValidEmail() -> Bool {
        return email.contains("@") && email.contains(".")
    }
    
    func isValidPasswordLength() -> Bool {
        return password.count >= 8 && password.count <= 16
    }
    
    func doPasswordsMatch() -> Bool {
        return password == confirmPassword
    }
    
    func isValidPassword() -> Bool {
        return isValidPasswordLength() && doPasswordsMatch()
    }
}
