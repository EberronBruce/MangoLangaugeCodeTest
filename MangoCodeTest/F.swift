//
//  F.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation

class F: Dependency {
    
    //private let depends: Set<String> = ["H"]
    
    override init() {
        super.init()
        setupDepends(["H"])
    }
    
    func test() {
        print(dependSet)
    }
}