//
//  UILabel.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 31/03/16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit.UILabel

extension UILabel {
    
    @IBInspectable var localizeableText: String? {
        set {
            self.text = newValue?.localized
        }
        get {
            return self.text
        }
    }
    
}



