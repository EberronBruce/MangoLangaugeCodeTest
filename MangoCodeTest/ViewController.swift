//
//  ViewController.swift
//  MangoCodeTest
//
//  Created by Bruce Burgess on 7/25/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var table: UITableView!
    var previouslySelectedHeaderIndex: Int?
    var selectedHeaderIndex: Int?
    var selectedItemIndex: Int?
    
    let cells = SwiftyAccordionCells()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        self.setup()
        
    }
    
    func setup() {
        let cal = CalculateDepend()
        
        let a = A()
        var dependArray = cal.retrieveDependenciesOfDependencyClass(a)
        self.cells.append(SwiftyAccordionCells.HeaderItem(value: "Dependencies of A"))
        setDependentCells(dependArray)
        
        let b = B()
        dependArray = cal.retrieveDependenciesOfDependencyClass(b)
        self.cells.append(SwiftyAccordionCells.HeaderItem(value: "Dependencies of B"))
        setDependentCells(dependArray)
        
        let c = C()
        dependArray = cal.retrieveDependenciesOfDependencyClass(c)
        self.cells.append(SwiftyAccordionCells.HeaderItem(value: "Dependencies of C"))
        setDependentCells(dependArray)
        
        let d = D()
        dependArray = cal.retrieveDependenciesOfDependencyClass(d)
        self.cells.append(SwiftyAccordionCells.HeaderItem(value: "Dependencies of D"))
        setDependentCells(dependArray)

        let e = E()
        dependArray = cal.retrieveDependenciesOfDependencyClass(e)
        self.cells.append(SwiftyAccordionCells.HeaderItem(value: "Dependencies of E"))
        setDependentCells(dependArray)
        
        let f = F()
        dependArray = cal.retrieveDependenciesOfDependencyClass(f)
        self.cells.append(SwiftyAccordionCells.HeaderItem(value: "Dependencies of F"))
        setDependentCells(dependArray)
        
        let g = G()
        dependArray = cal.retrieveDependenciesOfDependencyClass(g)
        self.cells.append(SwiftyAccordionCells.HeaderItem(value: "Dependencies of G"))
        setDependentCells(dependArray)
        
        let h = H()
        dependArray = cal.retrieveDependenciesOfDependencyClass(h)
        self.cells.append(SwiftyAccordionCells.HeaderItem(value: "Dependencies of H"))
        setDependentCells(dependArray)
        
    }
    
    func setDependentCells(dependArray:[String]){
        for dep in dependArray {
            self.cells.append(SwiftyAccordionCells.Item(value: "Dependent \(dep)"))
        }
        
        if dependArray == [] {
            self.cells.append(SwiftyAccordionCells.Item(value: "There are no dependencies"))
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cells.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let item = self.cells.items[indexPath.row]
        let value = item.value as? String
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("cell") {
            cell.textLabel?.text = value
            
            if item as? SwiftyAccordionCells.HeaderItem != nil {
                cell.backgroundColor = UIColor.orangeColor()
            } else {
                cell.backgroundColor = UIColor.lightGrayColor()
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let item = self.cells.items[indexPath.row]
        
        if item is SwiftyAccordionCells.HeaderItem {
            return 60
        } else if (item.isHidden) {
            return 0
        } else {
            return 44
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let item = self.cells.items[indexPath.row]
        
        if item is SwiftyAccordionCells.HeaderItem {
            if self.selectedHeaderIndex == nil {
                self.selectedHeaderIndex = indexPath.row
            } else {
                self.previouslySelectedHeaderIndex = self.selectedHeaderIndex
                self.selectedHeaderIndex = indexPath.row
            }
            
            if let previouslySelectedHeaderIndex = self.previouslySelectedHeaderIndex {
                self.cells.collapse(previouslySelectedHeaderIndex)
            }
            
            if self.previouslySelectedHeaderIndex != self.selectedHeaderIndex {
                self.cells.expand(self.selectedHeaderIndex!)
            } else {
                self.selectedHeaderIndex = nil
                self.previouslySelectedHeaderIndex = nil
            }
            
            self.table.beginUpdates()
            self.table.endUpdates()
            
        }
    }
    
}
