//
//  UIResponder.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 22.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit.UIResponder

extension UIResponder {
    fileprivate static var __firstResponder: UIResponder!
    public class func currentFirstResponder() -> UIResponder? {
        __firstResponder = nil
        UIApplication.shared.sendAction(#selector(__firstResponserAction(_:)), to: nil, from: nil, for: nil)
        return __firstResponder
    }
    
    @objc fileprivate func __firstResponserAction(_ sender: AnyObject) {
        UIResponder.__firstResponder = self
    }
}
