import CoreGraphics

extension CGImage {
  func resize(to size: CGSize) -> CGImage? {
    guard let context  = CGContext(data: nil, width: Int(size.width), height: Int(size.height),
                                   bitsPerComponent: bitsPerComponent,
                                   bytesPerRow: bytesPerRow,
                                   space: colorSpace ?? CGColorSpaceCreateDeviceRGB(),
                                   bitmapInfo: alphaInfo.rawValue) else { return nil }
    context.draw(self, in: CGRect(origin: CGPoint.zero, size: size))
    return context.makeImage()
  }
}
