//
//  CGRect.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import CoreGraphics




extension CGRect {
    
    var topLeft:        CGPoint { return CGPointMake(minX, minY)}
    var topCenter:      CGPoint { return CGPointMake(midX, minY)}
    var topRight:       CGPoint { return CGPointMake(maxX, minY)}
    
    var centerLeft:     CGPoint { return CGPointMake(minX, midY)}
    var center:         CGPoint { return CGPointMake(midX, midY)}
    var cetnerRight:    CGPoint { return CGPointMake(maxX, midY)}
    
    var bottomLeft:     CGPoint { return CGPointMake(minX, maxY)}
    var bottomCenter:   CGPoint { return CGPointMake(midX, maxY)}
    var bottomRight:    CGPoint { return CGPointMake(maxX, maxY)}
    
}





