//
//  D.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation

class D: Dependency {
    
     //private let depends: Set<String> = ["A", "F"]
    override init() {
        super.init()
        setupDepends(["A", "F"])
    }
    
    func test() {
        print(dependSet)
    }
}