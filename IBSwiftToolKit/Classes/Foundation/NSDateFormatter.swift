//
//  NSDateFormatter.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

extension NSDateFormatter {
    public convenience init(format: String){
        self.init()
        self.dateFormat = format
    }
}