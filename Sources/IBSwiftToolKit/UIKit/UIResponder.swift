#if os(iOS)
import UIKit.UIResponder

public extension UIResponder {

  class func currentFirstResponder() -> UIResponder? {
    savedFirstResponder = nil
    UIApplication.shared.sendAction(#selector(firstResponserAction(_:)), to: nil, from: nil, for: nil)
    return savedFirstResponder
  }

}

private extension UIResponder {

  static var savedFirstResponder: UIResponder!

  @objc func firstResponserAction(_ sender: AnyObject) {
    UIResponder.savedFirstResponder = self
  }

}
#endif
