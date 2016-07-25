//
//  CalculateDepend.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation

class CalculateDepend {
    
    func retrieveDependenciesOfDependencyClass(dependClass: Dependency) -> [String] {
        getAllDependenciesOfClass(dependClass)
        let setArray = sortTotalSet()
        clearTotalSet()
        return setArray
    }
    
    private func clearTotalSet() {
        totalSet = []
    }
    
    private func sortTotalSet() -> [String] {
        let sortedSet = totalSet.sort()
        return sortedSet
    }
    
    private func getAllDependenciesOfClass(dependClass: Dependency) {
        let set = getDependenciesByClass(dependClass)
        putDependencyInSet(dependClass)
        for item in set {
            if let instanceOfClass = getClassByName(item) {
                getAllDependenciesOfClass(instanceOfClass)
            }
        }
    }
    
    
    private var totalSet: Set<String> = []
    
    private func getDependenciesByClass(dependClass: Dependency) -> Set<String> {
        return dependClass.dependSet
    }
    
    private func putDependencyInSet(dependClass: Dependency){
        let set = getDependenciesByClass(dependClass)
        for item in set {
            if !totalSet.contains(item) {
                totalSet.insert(item)
            }
        }
    }
    
    
    private func getClassByName(name: String) -> Dependency? {
        switch name {
        case "A":
            return A()
        case "B":
            return B()
        case "C":
            return C()
        case "D":
            return D()
        case "E":
            return E()
        case "F":
            return F()
        case "G":
            return G()
        case "H":
            return H()
        default:
            print("NOTHING")
            return nil
        }
    }
}