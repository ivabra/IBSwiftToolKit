import CoreGraphics

extension CGColor {
  public var uiColor: UIColor {
    return .init(cgColor: self)
  }
}
