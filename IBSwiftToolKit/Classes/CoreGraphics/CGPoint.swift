//
//  CGPoint.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation


public let CGAnchorPointCenter         = CGPointMake(0.5, 0.5)
public let CGAnchorPointCenterLeft     = CGPointMake(0, 0.5)
public let CGAnchorPointCenterRight    = CGPointMake(1, 0.5)

public let CGAnchorPointBottomCenter   = CGPointMake(0.5, 1)
public let CGAnchorPointBottomLeft     = CGPointMake(0.5, 1)
public let CGAnchorPointBottomRight    = CGPointMake(1, 1)

public let CGAnchorPointTopLeft        = CGPointMake(0, 0)
public let CGAnchorPointTopRight       = CGPointMake(0.5, 0.5)
public let CGAnchorPointTopCenter      = CGPointMake(0.5, 0)


public func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPointMake(left.x + right.x, left.y + right.y)
}

public func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPointMake(left.x - right.x, left.y - right.y)
}

public func * (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPointMake(left.x * right.x, left.y * right.y)
}

public func / (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPointMake(left.x / right.x, left.y / right.y)
}