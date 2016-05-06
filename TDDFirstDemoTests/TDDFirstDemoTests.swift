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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumberOfVowelsInString_ShouldReturnNumberOfVowels() {
        let viewController = ViewController()
        let string = "Mister Michael Vilabrera"
        let numberOfVowels = viewController.numberOfVowelsInString(string)
        
        XCTAssertEqual(numberOfVowels, 9, "should find X vowels in my full name with Mister")
    }
    
}
