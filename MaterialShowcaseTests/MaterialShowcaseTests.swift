//
//  MaterialShowcaseTests.swift
//  MaterialShowcaseTests
//
//  Created by Andrei Tulai on 2017-11-09.
//  Copyright © 2017 Aromajoin. All rights reserved.
//

import XCTest
import MaterialShowcase
@testable import MaterialShowcaseApp

class MaterialShowcaseTests: XCTestCase {
  
  func testPresentedShowcases() {
    let showExpectation = expectation(description: "Showcase did show")
    
    let view = UIView()
    
    let showcase = MaterialShowcase()
    showcase.setTargetView(view: view)
    showcase.show {
      showExpectation.fulfill()
    }
    
    waitForExpectations(timeout: 5, handler: nil)
    
    let presented = MaterialShowcase.presentedShowcases()
    
    XCTAssert(presented?.count == 1)
    XCTAssert(presented?.first === showcase)
  }
  
}

