//
//  CGImage.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation


public func CGImageResize(_ image: CGImage, _ size: CGSize) -> CGImage! {
    let context  = CGContext(data: nil, width: Int(size.width), height: Int(size.height),
                                         bitsPerComponent: image.bitsPerComponent,
                                         bytesPerRow: image.bytesPerRow,
                                         space: image.colorSpace!,
                                         bitmapInfo: image.alphaInfo.rawValue);
    context?.draw(image, in: CGRect(origin: CGPoint.zero, size: size));
    return context!.makeImage();
}
