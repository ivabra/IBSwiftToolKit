//
//  CGRect.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import CoreGraphics




extension CGRect {
    
    public var topLeft:        CGPoint { return CGPoint(x: minX, y: minY)}
    public var topCenter:      CGPoint { return CGPoint(x: midX, y: minY)}
    public var topRight:       CGPoint { return CGPoint(x: maxX, y: minY)}
    
    public var centerLeft:     CGPoint { return CGPoint(x: minX, y: midY)}
    public var center:         CGPoint { return CGPoint(x: midX, y: midY)}
    public var centerRight:    CGPoint { return CGPoint(x: maxX, y: midY)}
    
    public var bottomLeft:     CGPoint { return CGPoint(x: minX, y: maxY)}
    public var bottomCenter:   CGPoint { return CGPoint(x: midX, y: maxY)}
    public var bottomRight:    CGPoint { return CGPoint(x: maxX, y: maxY)}
    
}


extension CGSize {
   public static let infinity: CGSize = .init(width: CGFloat.infinity, height: CGFloat.infinity)
}




