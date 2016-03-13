//
//  NSObject.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation.NSObject

extension NSObject {
    public func asOption<T>(type: T.Type) -> T? {
        return self as? T
    }
    public func asUnwrappedOption<T>(type: T.Type) -> T! {
        return self as? T
    }
    public func asType<T>(type: T.Type) -> T {
        return self as! T
    }
}