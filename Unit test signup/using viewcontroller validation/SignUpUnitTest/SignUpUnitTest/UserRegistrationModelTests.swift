//
//  UserRegistrationModelTests.swift
//  SignUpUnitTestTests
//
//  Created by Jony on 15/08/20.
//  Copyright © 2020 Jony. All rights reserved.
//

import XCTest
@testable import SignUpUnitTest

class UserRegistrationModelTests: XCTestCase {
    
   
//    let firstName = "Sergey"
//    let lastName = "Kargopolov"
//    let email = "test@test.com"
//    let password = "12345678"
//    let repeatPassword = "12345678"

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        userRegistrationModel = nil
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testValidFirstName() {
        
//     let userRegistrationModel = UserRegistrationModel(firstName: "Test", lastName: " Testing", email: "tesr@gmail.com", password: "123456", confirmPassword: "123456")
//            print(userRegistrationModel)
        var objViewController = ViewController()
           
//           var userRegistrationModel: UserRegistrationModel!
        let userRegistrationModel = objViewController.isFirstNameValidation()
        XCTAssertTrue(objViewController.isValidFirstName(userRegistrtionModel: userRegistrationModel))
//       XCTAssertTrue(userRegistrationModel.isValidFirstName())
        
        
        if (userRegistrationModel.firstName.count == 0) {
            XCTAssertTrue(false)
        }
    }
}


