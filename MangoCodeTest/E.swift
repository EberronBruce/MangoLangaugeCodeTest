//
//  E.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation

class E: Dependency {
    
    //private let depends: Set<String> = ["F"]
    
    override init() {
        super.init()
        setupDepends(["F"])
    }
    
    func test() {
        print(dependSet)
    }
}