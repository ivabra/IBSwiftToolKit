import UIKit

extension UIViewController {

public func addChildViewController(_ controller: UIViewController, toView view: UIView) {
    addChild(controller)
    controller.view.frame = view.bounds
    view.addSubview(controller.view)
    controller.didMove(toParent: self)
  }

  public func removeFromParentViewControllerCompletely() {
    view.removeFromSuperview()
    removeFromParent()
  }

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
