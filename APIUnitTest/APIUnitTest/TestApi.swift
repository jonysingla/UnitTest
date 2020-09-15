//
//  TestApi.swift
//  APIUnitTestTests
//
//  Created by Jony on 19/08/20.
//  Copyright © 2020 Jony. All rights reserved.
//

import XCTest
@testable import APIUnitTest

class TestApi: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
//        self.testAPIWorking()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAPIWorking() {
        let objLoginDataManager = LoginDataManager()
        let expectation = XCTestExpectation.init(description: "Status code: 400")
        objLoginDataManager.loginDataManager(phone_no: "9315396979", password: "123456", device_id: "eM1v-GRFnoY:APA91bEjQuJ5RrWAfLsKxRfL-KvYW0fXQmPdrrbyAx5LpOCHr_Cdt6SNrp4mOjCOrGPEoy4ctj1upwApuoSZ-wMhhTlu-RsdVB-uJntcG-3S-O7mv-0DB9mwLg24IK9RSbfrBDky5gDk", device_type: "android", callBack: {(isSuccess, errorMesssage)   in
            if(isSuccess) {
                print("status ------------", isSuccess)
                XCTAssertTrue(true)
            } else {
                print("Error", errorMesssage ?? "errorMesssage")
                XCTAssertTrue(false)
            }
            expectation.fulfill()
        })
         wait(for: [expectation], timeout: 60.0)
    }
}
