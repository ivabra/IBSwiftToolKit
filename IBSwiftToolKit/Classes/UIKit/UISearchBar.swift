//
//  UISearchBar.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

extension UISearchBar {
    @IBInspectable
    public var localizablePlaceholder: String? {
        get {
            return nil
        }
        set {
            self.placeholder = newValue?.localized
        }
    }
}