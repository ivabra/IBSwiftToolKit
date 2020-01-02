import class UIKit.UIColor
import class CoreGraphics.CGColor

extension CGColor {
  public var uiColor: UIColor {
    return .init(cgColor: self)
  }
}
