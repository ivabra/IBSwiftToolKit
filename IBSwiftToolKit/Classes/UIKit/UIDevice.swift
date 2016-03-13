//
//  UIDevice.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

extension UIDevice {
    public var userInfo: [String : AnyObject]{
        return [
            "name"          : name,
            "sysname"       : systemName,
            "model"         : model,
            "systemVersion" : systemVersion,
            "uiIdiom"       : userInterfaceIdiom == .Pad ? "iPad" : "iPhone"
        ]
    }
}
