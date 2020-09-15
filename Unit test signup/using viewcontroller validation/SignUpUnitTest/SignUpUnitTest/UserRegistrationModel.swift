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
        print("firstName ---------------", firstName)
    }
    
}
// First way to use by model class
//extension UserRegistrationModel {
//    func isValidFirstName() -> Bool {
//        print(firstName.count)
//        return firstName.count >= 3 && firstName.count <= 16
//    }
//}
