//
//  A.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation


class A: Dependency {
    
    override init() {
        super.init()
        setupDepends(["B","C"])
    }
    

    func test() {
        print(dependSet)
    }
    
    
}