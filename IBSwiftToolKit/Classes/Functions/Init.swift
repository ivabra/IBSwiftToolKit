//
//  Init.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

@discardableResult
public func Init<T>(_ object: T!, _ setup: (T)->Void) -> T! {
    guard let object = object else  { return nil }
    setup(object)
    return object
}
