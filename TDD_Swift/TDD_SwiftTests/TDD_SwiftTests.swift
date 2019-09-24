//
//  TDD_SwiftTests.swift
//  TDD_SwiftTests
//
//  Created by Atif on 24/09/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import XCTest
@testable import TDD_Swift

class TDD_SwiftTests: XCTestCase {
    let calculate = CalculateSum()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddEmpty() {
        let sum = calculate.sum(numbers: "")
        XCTAssertEqual(sum, 0, "Sum was incoreect")
    }

    func testAddNumberString() {
        let sum = calculate.sum(numbers: "1,2,3")
        XCTAssertEqual(sum, 6, "Sum was incoreect")
    }
    
    func testAddNonNumberString() {
         let sum = calculate.sum(numbers: "1,2,X")
         XCTAssertEqual(sum, 3, "Sum was incoreect")
    }

    func testAddNewLineCharacter() {
         let sum = calculate.sum(numbers: "1\n2,3")
         XCTAssertEqual(sum, 6, "Sum was incoreect")
    }
}
