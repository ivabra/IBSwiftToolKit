//
//  UISegmentControl.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

extension UISegmentedControl {
    public func setLocalizableTitle(localizableTitle: String, forSegmentAtIndex index: Int) {
        setTitle(NSLocalizedString(localizableTitle, comment: ""), forSegmentAtIndex: index)
    }
}