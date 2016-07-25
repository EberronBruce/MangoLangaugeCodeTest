//
//  MangoCodeTestTests.swift
//  MangoCodeTestTests
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import XCTest
@testable import MangoCodeTest

class MangoCodeTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let cal = CalculateDepend()
        let a = A()
        let b = B()
        let c = C()
        let d = D()
        let e = E()
        let f = F()
        let g = G()
        let h = H()
        
        XCTAssertEqual(cal.retrieveDependenciesOfDependencyClass(a), ["B","C","E","F","G","H"])
        XCTAssertEqual(cal.retrieveDependenciesOfDependencyClass(b), ["C","E","F","G","H"])
        XCTAssertEqual(cal.retrieveDependenciesOfDependencyClass(c), ["G"])
        XCTAssertEqual(cal.retrieveDependenciesOfDependencyClass(d), ["A","B","C","E","F","G","H"])
        XCTAssertEqual(cal.retrieveDependenciesOfDependencyClass(e), ["F","H"])
        XCTAssertEqual(cal.retrieveDependenciesOfDependencyClass(f), ["H"])
        XCTAssertEqual(cal.retrieveDependenciesOfDependencyClass(g), [])
        XCTAssertEqual(cal.retrieveDependenciesOfDependencyClass(h), [])
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
