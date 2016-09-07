//
//  NSRange.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation.NSRange

extension NSRange {
    
    public init(range:Range <Int>) {
        self.location = range.lowerBound
        self.length = range.upperBound - range.lowerBound
    }
     
}
