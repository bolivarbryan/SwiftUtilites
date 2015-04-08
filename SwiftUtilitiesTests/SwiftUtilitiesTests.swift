//
//  SwiftUtilitiesTests.swift
//  SwiftUtilitiesTests
//
//  Created by Bryan A Bolivar M on 8/04/15.
//  Copyright (c) 2015 BolivarBryan. All rights reserved.
//

import UIKit
import XCTest

class SwiftUtilitiesTests: XCTestCase {
    var util:SwiftUtilities!
    
    override func setUp() {
        super.setUp()
        util = SwiftUtilities()
    }
    override func tearDown() {
        super.tearDown()
    }

    func testInvalidUrl(){
        self.measureBlock() {
        XCTAssertFalse(self.util.validateUrl("http://thisisadomain"), "http://thisisadomain should be a invalid url")

        }
    }
    
    func testValidUrl(){
        self.measureBlock() {
        XCTAssertTrue(self.util.validateUrl("http://www.mercadorata.com"), "http://www.google.com should be a valid url")
            }
    }
    
}
