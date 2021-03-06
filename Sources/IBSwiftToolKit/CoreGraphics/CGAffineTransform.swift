import CoreGraphics

extension CGAffineTransform {

  public func scaled(x: CGFloat, y: CGFloat) -> CGAffineTransform {
    return self.scaledBy(x: x, y: y)
  }

  public func translated(x: CGFloat, y: CGFloat) -> CGAffineTransform {
    return self.translatedBy(x: x, y: y)
  }

  public func rotated(_ angle: CGFloat) -> CGAffineTransform {
    return self.rotated(by: angle)
  }
  // MARK: in place transforms

  public  mutating func translate(x: CGFloat, y: CGFloat) {
    self = self.translatedBy(x: x, y: y)
  }

  public mutating func scale(x: CGFloat, y: CGFloat) {
    self = self.scaledBy(x: x, y: y)
  }

  public mutating func rotate(_ angle: CGFloat) {
    self = self.rotated(by: angle)
  }

  public mutating func invert() {
    self = self.inverted()
  }

  public mutating func identity() {
    self = CGAffineTransform.identity
  }

}
