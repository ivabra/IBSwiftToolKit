//
//  NSRange.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation.NSRange

extension NSRange {
    public init(location:Int, length:Int) {
        self.location = location
        self.length = length
    }
    
    public init(_ location:Int, _ length:Int) {
        self.location = location
        self.length = length
    }
    
    public init(range:Range <Int>) {
        self.location = range.startIndex
        self.length = range.endIndex - range.startIndex
    }
    
    public init(_ range:Range <Int>) {
        self.location = range.startIndex
        self.length = range.endIndex - range.startIndex
    }
}