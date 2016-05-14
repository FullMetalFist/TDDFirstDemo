//
//  TDDFirstDemoTests.swift
//  TDDFirstDemoTests
//
//  Created by Michael Vilabrera on 5/6/16.
//  Copyright © 2016 Michael Vilabrera. All rights reserved.
//

import XCTest
@testable import TDDFirstDemo

class TDDFirstDemoTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewController = ViewController()
        // continueAfterFailure = false
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumberOfVowelsInString_ShouldReturnNumberOfVowels() {
        let string = "Mister Michael Vilabrera"
        let numberOfVowels = viewController.numberOfVowelsInString(string)
        
        //XCTAssertEqual(numberOfVowels, 9, "should find 9 vowels in my full name with Mister")
        XCTAssertEqual(numberOfVowels, 9, "should find 9 vowels in my full name with Mister", file: "FirstDemoTests.swift", line: 24)
    }
    
    // remove prefix to spare this test
    func testMakeHeadline_ReturnsStringWithEachWordStartCapital() {
        let inputString = "this is A test headline"
        let expectedHeadline = "This Is A Test Headline"
        let result = viewController.makeHeadline(inputString)
        XCTAssertEqual(result, expectedHeadline)
    }
    
    func testMakeHeadline_ReturnsStringWithEachWordStartCapital2() {
        let inputString = "Here is another Example"
        let expectedHeadline = "Here Is Another Example"
        let result = viewController.makeHeadline(inputString)
        XCTAssertEqual(result, expectedHeadline)
    }
}
