//
//  CarTests.swift
//  UnitTestTests
//
//  Created by Jony on 14/08/20.
//  Copyright © 2020 Jony. All rights reserved.
//

import XCTest
@testable import UnitTest

class CarTests: XCTestCase {

    var ferrari:Car!
    var jeep:Car!
    var honda:Car!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        ferrari = Car(carType: .Sport, transmissionMode: .Drive)
        jeep = Car(carType: .OffRoad, transmissionMode: .Drive)
        honda = Car(carType: .Economy, transmissionMode: .Park)
//        ferrari.start(minutes: <#Int#>)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        ferrari = nil
        jeep = nil
        honda = nil
    }

//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
    func testSportFasterThanJeep() {
       let minutes = 100
       //1 start ferrari
       ferrari.start(minutes: minutes)
       //2 start jeep
       jeep.start(minutes: minutes)
       //Test it
       XCTAssertTrue(ferrari.miles > jeep.miles)
    }
}
