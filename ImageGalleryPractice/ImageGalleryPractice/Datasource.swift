//
//  Datasource.swift
//  ImageGalleryPractice
//
//  Created by ayako_sayama on 2017-06-13.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation

class DataSource{
    
    var birds:[BirdCell] = []
    var groups:[String] = []
    
    
    func numberOfRowsInEachGroup(_ index: Int) -> Int {
        return birdsInGroup(index).count
    }
    
    func numberOfGroups() -> Int {
        return groups.count
    }
    
    func gettGroupLabelAtIndex(_ index: Int) -> String {
        return groups[index]
    }

    
    init(){
        if let path = Bundle.main.path(forResource: "fruits", ofType: "plist") {
            if let dictArray = NSArray(contentsOfFile: path) {
                for item in dictArray {
                    if let dict = item as? NSDictionary {
                        let name = dict["name"] as! String
                        let group = dict["group"] as! String
                        
                        let bird = Bird(name: name, group: group)
                        if !groups.contains(group){
                            groups.append(group)
                        }
                        birds.append(bird)
                    }
                }
            }
        }
   
    }
    
    // MARK:- FruitsForEachGroup
    
    func fruitsInGroup(_ index: Int) -> [Bird] {
        let item = groups[index]
        let filteredFruits = birds.filter { (fruit: Fruit) -> Bool in
            return fruit.group == item
        }
        return filteredFruits
    }
    
    // MARK:- Add Dummy Data
    
    func addAndGetIndexForNewItem() -> Int {
        
        let fruit = Bird(name: "SugarApple", group: "Morning")
        
        let count = fruitsInGroup(0).count
        
        let index = count > 0 ? count - 1 : count
        birds.insert(fruit, at: index)
        
        return index
    }
    
    // MARK:- Delete Items
    
    func deleteItems(_ items: [Bird]]) {
        
        for item in items {
            // remove item
            let index = fruits.indexOfObject(item)
            if index != -1 {
                fruits.remove(at: index)
            }
        }
    }
}

extension Array {
    func indexOfObject<T:AnyObject>(_ item:T) -> Int {
        var index = -1
        for element in self {
            index += 1
            if item === element as? T {
                return index
            }
        }
        return index
    }
}


}
