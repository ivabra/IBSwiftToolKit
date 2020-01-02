import UIKit

extension UIViewController {

  public var rawStoryboardSegueTemplates: [AnyObject]? {
    return value(forKey: "_storyboardSegueTemplates") as? [AnyObject]
  }

  public var storyboardSegueTemplates: [StoryboardSegueTemplate] {
    return rawStoryboardSegueTemplates?.map { LazyStoryboardSegueTemplate(wrapped: $0) } ?? []
  }

  public func findOutputSeguesWithClassNameContains(_ className: String) -> [StoryboardSegueTemplate] {
    return storyboardSegueTemplates.filter { $0.segueClassName?.contains(className) == true }
  }

}
