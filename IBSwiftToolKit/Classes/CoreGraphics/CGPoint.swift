//
//  CGPoint.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation


public let CGAnchorPointCenter         = CGPoint(x: 0.5, y: 0.5)
public let CGAnchorPointCenterLeft     = CGPoint(x: 0, y: 0.5)
public let CGAnchorPointCenterRight    = CGPoint(x: 1, y: 0.5)

public let CGAnchorPointBottomCenter   = CGPoint(x: 0.5, y: 1)
public let CGAnchorPointBottomLeft     = CGPoint(x: 0.5, y: 1)
public let CGAnchorPointBottomRight    = CGPoint(x: 1, y: 1)

public let CGAnchorPointTopLeft        = CGPoint(x: 0, y: 0)
public let CGAnchorPointTopRight       = CGPoint(x: 0.5, y: 0.5)
public let CGAnchorPointTopCenter      = CGPoint(x: 0.5, y: 0)


public func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

public func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

public func * (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x * right.x, y: left.y * right.y)
}

public func / (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x / right.x, y: left.y / right.y)
}
