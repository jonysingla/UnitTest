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
    
    let objViewController = ViewController()
    
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
//        let objViewController = ViewController()
//        let userRegistrationModel = objViewController.userRegistrationDataModel()
//        XCTAssertTrue(userRegistrationModel.isValidFirstName())
        XCTAssertTrue(objViewController.userRegistrationDataModel().isValidFirstName())
    }
    func testValidLastName() {
         XCTAssertTrue(objViewController.userRegistrationDataModel().isValidLastName())
    }
    func testValidEmail() {
        XCTAssertTrue(objViewController.userRegistrationDataModel().isValidEmail())
    }
    func testValidPasswordLenth() {
        XCTAssertTrue(objViewController.userRegistrationDataModel().isValidPasswordLength())
    }
    func testValidPassword_ConfirmPasswordMatch() {
        XCTAssertTrue(objViewController.userRegistrationDataModel().doPasswordsMatch())
    }
    
    func testPassword_ConfirmPasswordValid() {
        XCTAssertTrue(objViewController.userRegistrationDataModel().isValidPassword())
    }
}


