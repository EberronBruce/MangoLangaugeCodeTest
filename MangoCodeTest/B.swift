//
//  B.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation

class B: Dependency {
    
    //private let depends: Set<String> = ["C", "E"]
    override init() {
        super.init()
        setupDepends(["C","E"])
    }
    
    func test() {
        print(dependSet)
    }

}