//
//  CGAffineTransform.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

extension CGAffineTransform {
    
    
    public func scaled(x x: CGFloat, y: CGFloat) -> CGAffineTransform {
        return CGAffineTransformScale(self, x, y)
    }
    
    public func translated(x x: CGFloat, y: CGFloat) -> CGAffineTransform {
        return CGAffineTransformTranslate(self, x, y)
    }
    
    public func rotated(angle: CGFloat) -> CGAffineTransform {
        return CGAffineTransformRotate(self, angle)
    }
    
    public func inverted() -> CGAffineTransform {
        return CGAffineTransformInvert(self)
    }
    
    // MARK: in place transforms
    
    public  mutating func translate(x x: CGFloat, y: CGFloat) {
        self = CGAffineTransformTranslate(self, x, y)
    }
    
    public mutating func scale(x x: CGFloat, y: CGFloat) {
        self = CGAffineTransformScale(self, x, y)
    }
    
    public mutating func rotate(angle: CGFloat) {
        self = CGAffineTransformRotate(self, angle)
    }
    
    public mutating func invert() {
        self = CGAffineTransformInvert(self)
    }
    
    public mutating func identity() {
        self = CGAffineTransformIdentity
    }
    
    
    
}