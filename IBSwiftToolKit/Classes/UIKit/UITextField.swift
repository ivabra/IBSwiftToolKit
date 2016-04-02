//
//  UITextField.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 02/04/16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit.UITextField

extension UITextField {
    
    @IBInspectable var localizedText: String? {
        set {
            self.text = newValue?.localized
        }
        get {
            return self.text
        }
    }
    
    
    @IBInspectable var localizedPlaceholder: String? {
        set {
            self.placeholder = newValue?.localized
        }
        get {
            return self.placeholder
        }
    }
    
}
