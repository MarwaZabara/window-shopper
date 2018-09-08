//
//  window_shopper_Tests.swift
//  window-shopper-Tests
//
//  Created by Marwa Zabara on 9/8/18.
//  Copyright © 2018 Marwa Zabara. All rights reserved.
//

import XCTest


class window_shopper_Tests: XCTestCase {
 
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
 
    func testGetHours() {
       XCTAssert(Wage.GetHours(ForWage: 25, AndPrice: 100) == 4)
//        XCTAssert(Wage.GetHours(ForWage: 25, AndPrice: 100) == 6)
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    }
