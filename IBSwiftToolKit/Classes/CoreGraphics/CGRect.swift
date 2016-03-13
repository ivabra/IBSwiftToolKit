//
//  CGRect.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import CoreGraphics




extension CGRect {
    
    public var topLeft:        CGPoint { return CGPointMake(minX, minY)}
    public var topCenter:      CGPoint { return CGPointMake(midX, minY)}
    public var topRight:       CGPoint { return CGPointMake(maxX, minY)}
    
    public var centerLeft:     CGPoint { return CGPointMake(minX, midY)}
    public var center:         CGPoint { return CGPointMake(midX, midY)}
    public var cetnerRight:    CGPoint { return CGPointMake(maxX, midY)}
    
    public var bottomLeft:     CGPoint { return CGPointMake(minX, maxY)}
    public var bottomCenter:   CGPoint { return CGPointMake(midX, maxY)}
    public var bottomRight:    CGPoint { return CGPointMake(maxX, maxY)}
    
}





