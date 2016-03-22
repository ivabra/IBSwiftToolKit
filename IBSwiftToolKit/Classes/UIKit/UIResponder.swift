//
//  UIResponder.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 22.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit.UIResponder

extension UIResponder {
    private static var __firstResponder: UIResponder!
    public class func currentFirstResponder() -> UIResponder? {
        __firstResponder = nil
        UIApplication.sharedApplication().sendAction(#selector(__firstResponserAction(_:)), to: nil, from: nil, forEvent: nil)
        return __firstResponder
    }
    
    @objc private func __firstResponserAction(sender: AnyObject) {
        UIResponder.__firstResponder = self
    }
}