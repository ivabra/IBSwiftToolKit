//
//  Array.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//


extension Array {
    public mutating func withoutItemsAtIndexesInPlace(indexes: [Int]) -> [Element]{
        let indexSet = Set(indexes)
        var removed = [Element]()
        self = enumerate().filter {
            if indexSet.contains($0.index) {
                removed.append($0.element)
                return false
            }
            return true
            }.map {$0.element}
        return removed
    }
    
    public mutating func withItemsAtIndexesInPlace(indexes: [Int]){
        let indexSet = Set(indexes)
        self = enumerate().filter{indexSet.contains($0.index)}.map {$0.element}
    }
    
    public func arrayWithoutItemsAtIndexes(indexes: [Int]) -> [Element] {
        let indexSet = Set(indexes)
        return enumerate().filter{!indexSet.contains($0.index)}.map {$0.element}
    }
    
    public func arrayWithItemsAtIndexes(indexes: [Int]) -> [Element] {
        let indexSet = Set(indexes)
        return enumerate().filter{indexSet.contains($0.index)}.map {$0.element}
    }
}