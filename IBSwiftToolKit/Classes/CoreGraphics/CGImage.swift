//
//  CGImage.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation


public func CGImageResize(image: CGImage, _ size: CGSize) -> CGImage! {
    let context  = CGBitmapContextCreate(nil, Int(size.width), Int(size.height),
                                         CGImageGetBitsPerComponent(image),
                                         CGImageGetBytesPerRow(image),
                                         CGImageGetColorSpace(image),
                                         CGImageGetAlphaInfo(image).rawValue);
    CGContextDrawImage(context, CGRect(origin: CGPointZero, size: size), image);
    return CGBitmapContextCreateImage(context);
}