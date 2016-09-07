//
//  CommonOperators.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 14.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

infix operator =!

public func =! <T>(left: inout T, right: Any) {
    left = right as! T
}


infix operator =?

public func =? <T>(left: inout T, right: Any?) {
    if let right = right as? T {
        left = right
    }
}

public func =? <T>(left: inout T!, right: Any?) {
    left = right as? T
}

