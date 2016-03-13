//
//  NSAttributedString.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

extension NSAttributedString {
    
    public convenience init(attributeStrings: AnyObject...) {
        let str = NSMutableAttributedString()
        for s in attributeStrings {
            if let attrString = s as? NSAttributedString {
                str.appendAttributedString(attrString)
            } else if let simpleString = s as? String {
                str.appendAttributedString(NSAttributedString(string: simpleString))
            } else {
                str.appendAttributedString(NSAttributedString(string: "\(s)"))
            }
        }
        self.init(attributedString: str)
    }
    
}

