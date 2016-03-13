//
//  Int.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

private let kBytesInKilobyte = 1024
private let kBytesInMegabyte = kBytesInKilobyte * kBytesInKilobyte
private let kBytesInGigabyte = kBytesInMegabyte * kBytesInKilobyte

extension Int {
    
    public var Double: Swift.Double {
        return Swift.Double(self)
    }
    
    public var kilobytes: Swift.Double {
        return self.Double / kBytesInKilobyte.Double
    }
    
    public var megabytes: Swift.Double {
        return self.Double / kBytesInMegabyte.Double
    }
    
    public var gigabytes: Swift.Double {
        return self.Double / kBytesInGigabyte.Double
    }
}

