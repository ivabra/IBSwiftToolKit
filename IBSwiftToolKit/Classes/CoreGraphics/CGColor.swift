//
//  CGColor.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import CoreGraphics

extension CGColor {
    public var UIColor: UIKit.UIColor {
        return UIKit.UIColor(cgColor: self)
    }
}
