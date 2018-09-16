import UIKit

extension UIViewController {

  /// Find the nearest parent view Controller with specified `class`.
  ///- Parameter class: Class of desired parent view controller.
  ///- Returns: Nearest parent view controller with specified `class`, or `nil`.

  public func parentViewControllerWithType<T>(_ class: T.Type) -> T? {
    var currentViewController = self
    while let parent = currentViewController.parent {
      if parent is T {
        return parent as? T
      }
      currentViewController = parent
    }
    return nil
  }

}
