//
//  UIBarButtonItem.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

extension UIBarButtonItem {
    @IBInspectable
    public var localizableTitle: String? {
        get {
            return nil
        }
        set {
            self.title = newValue?.localized
        }
    }
}