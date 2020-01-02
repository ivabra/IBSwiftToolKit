public protocol StoryboardSegueTemplate {
  var segueClassName: String? { get }
  var destinationViewControllerIdentifier: String? { get }
}

public struct CachedStoryboardSegueTemplate: StoryboardSegueTemplate {
  public var segueClassName: String?
  public var destinationViewControllerIdentifier: String?
}

public struct LazyStoryboardSegueTemplate: StoryboardSegueTemplate {

  private var wrapped: AnyObject

  init(wrapped: AnyObject) {
    self.wrapped = wrapped
  }

  public var segueClassName: String? {
    return wrapped.value(forKey: "_segueClassName") as? String
  }

  public var destinationViewControllerIdentifier: String? {
    return wrapped.value(forKey: "_destinationViewControllerIdentifier") as? String
  }

}
