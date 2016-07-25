//
//  Dependency.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation

class Dependency: DependsProto {
    
    private var _dependSet: Set<String> = []
    
    var dependSet: Set<String> {
        get {
            return _dependSet
        }
    }
    
    func setupDepends(depends:[String]) {
        for dep in depends {
            _dependSet.insert(dep)
        }
    }
}