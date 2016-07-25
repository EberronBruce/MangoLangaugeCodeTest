//
//  H.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation

class H: Dependency {
    
    // private let depends: Set<String> = []
    
    override init() {
        super.init()
        setupDepends([])
    }
    
    func test() {
        print(dependSet)
    }
}