//
//  C.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation

class C: Dependency {
    
    //private let depends: Set<String> = ["G"]
    override init() {
        super.init()
        setupDepends(["G"])
    }
    
    func test() {
        print(dependSet)
    }
}