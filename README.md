IBSwiftToolKit contains a lot useful extensions, functions and custom operators.

You can use CocoaPods to integrate library with your project:
```swift
 pod 'IBSwiftToolKit', :git => 'https://github.com/ivabra/IBSwiftToolKit'
```
**Functions**
- `Init(object, setup)` - initializer pattern.
```swift
var view = Init(UIView) {[unowned self] in
	$0.backgroundColor = UIColor.whiteColor;
	self.view.addSubview($0)
}
```
**Operators**
- `=!` - unsafe type casting operator. Instead `var a: T = b as! T` you can use `var a: T =! b`.
- `=?` - safe type casting operator. Instead `var a: T = b as? T` you can use `var a: T =? b`.

**Foundation**
- NSAttributedString  
```swift
public convenience init(attributeStrings: AnyObject...)
```
- NSDateFormatter  
```swift
public convenience init(format: String)
```
- NSObject  
```swift
public func asOption<T>(type: T.Type) -> T?
public func asUnwrappedOption<T>(type: T.Type) -> T!
public func asType<T>(type: T.Type) -> T
```
- NSRange  
```swift
public init(location: Int, length: Int)

public init(_ location: Int, _ length: Int)

public init(range: Range<Int>)

public init(_ range: Range<Int>)
```

**Swift**
- Array  
```swift
public mutating func withoutItemsAtIndexesInPlace(indexes: [Int]) -> [Element]

public mutating func withItemsAtIndexesInPlace(indexes: [Int])

public func arrayWithoutItemsAtIndexes(indexes: [Int]) -> [Element]

public func arrayWithItemsAtIndexes(indexes: [Int]) -> [Element]
```
- Int  
```swift
    public var Double: Double { get }
    public var kilobytes: Double { get }
    public var megabytes: Double { get }
    public var gigabytes: Double { get }
```
- String  
```swift

public var image: UIImage { get }

public func createViewController<T : UIViewController>(storyboard: UIStoryboard, _ type: T.Type) -> T?

public func like(regex: String) -> Bool

public func firstMatchingRegexpPattern(pattern: String) -> String?

public func allCharactersInSet(set: NSCharacterSet) -> Bool

public func oneOrMoreCharactersInSet(set: NSCharacterSet) -> Bool

public func attributed(attrs: [String : AnyObject]) -> NSAttributedString

public var stringByDeletingPathExtension: String { get }

public init?(json: [NSObject : AnyObject])

public func hasCharacter(ch: Character) -> Bool

public func stringByappendingURLParameter(parameter: String, withValue value: String) -> String

public func stringByAppendingURLParameters(paramValueDictionary: [String : AnyObject]) -> String

public func formatDate(date: NSDate) -> String

public func dateWithFormat(format: String) -> MSDate?

public func format(args: CVarArgType...) -> String

public func NSRangeOfString(string: String) -> NSRange?

public var clearedURLString: String { get }

public var localized: String { get }

public func localized(comment comment: String) -> String

public func localizedFormat(arguments: CVarArgType...) -> String

```

**CoreGrahics**
- CGAffineTransform  
```swift
public func scaled(x x: CGFloat, y: CGFloat) -> CGAffineTransform
public func translated(x x: CGFloat, y: CGFloat) -> CGAffineTransform
public func rotated(angle: CGFloat) -> CGAffineTransform
public func inverted() -> CGAffineTransform

public mutating func translate(x x: CGFloat, y: CGFloat)
public mutating func scale(x x: CGFloat, y: CGFloat)
public mutating func rotate(angle: CGFloat)
public mutating func invert()
public mutating func identity()
```
- CGColor  
```swift
public var UIColor: UIColor { get }
```
- CGImage
```swift
public func CGImageResize(image: CGImage, _ size: CGSize) -> CGImage!
```
- CGPoint  
```swift

public let CGAnchorPointCenter: CGPoint
public let CGAnchorPointCenterLeft: CGPoint
public let CGAnchorPointCenterRight: CGPoint
public let CGAnchorPointBottomCenter: CGPoint
public let CGAnchorPointBottomLeft: CGPoint
public let CGAnchorPointBottomRight: CGPoint
public let CGAnchorPointTopLeft: CGPoint
public let CGAnchorPointTopRight: CGPoint
public let CGAnchorPointTopCenter: CGPoint

public func +(left: CGPoint, right: CGPoint) -> CGPoint
public func -(left: CGPoint, right: CGPoint) -> CGPoint
public func *(left: CGPoint, right: CGPoint) -> CGPoint
public func /(left: CGPoint, right: CGPoint) -> CGPoint

```
- CGRect  
```swift

public var topLeft:      CGPoint { get }
public var topCenter:    CGPoint { get }
public var topRight:     CGPoint { get }
public var centerLeft:   CGPoint { get }
public var center:       CGPoint { get }
public var cetnerRight:  CGPoint { get }
public var bottomLeft:   CGPoint { get }
public var bottomCenter: CGPoint { get }
public var bottomRight:  CGPoint { get }

```

**UIKit**
- UIAlertViewController  
```swift
public class func presentAlertWithTitle(
	title: String?, 
	andMessage message: String?, 
	andPreferredStyle style: UIAlertControllerStyle, 
	withCancelTitle cancel: String?, 
	andActionTitle action: String?, 
	andActionStyle 
	actionStyle: UIAlertActionStyle,
	inViewController controller: UIViewController, 
	withActionBlock block: () -> ())

public convenience init(title: String, error: NSError?, unknownErrorDescription unknown: String = default)
```
- UIBarButtonItem  
```swift
 @IBInspectable public var localizeableTitle: String? { get set }
```
- UIButton  
```swift
public var titleForNormalState: String? { get set }

public var titleForDisabledState: String? { get set }

public var titleForSelectedState: String? { get set }

public var titleForHighlightedState: String? { get set }

@IBInspectable public var localizeableNormalTitle: String? { get set }
```
- UIDevice  
```swift
public var userInfo: [String : AnyObject] { get }
```
- UISearchBar  
```swift
@IBInspectable public var localizeablePlaceholder: String? { get set }
```
- UISegmentControl  
```swift
public func setLocalizeableTitle(localizeableTitle: String, forSegmentAtIndex index: Int)
```
- UIView  
```swift
@IBInspectable public var cornerRadius: CGFloat { get set }

@IBInspectable public var borderWidth: CGFloat { get set }

@IBInspectable public var borderColor: UIColor? { get set }

@IBInspectable public var shadowOffset: CGSize { get set }

@IBInspectable public var shadowOpacity: Float { get set }

@IBInspectable public var shadowRadius: CGFloat { get set }

@IBInspectable public var shadowColor: UIColor? { get set }

@IBInspectable public var _clipsToBounds: Bool { get set }

public func translate(x x: CGFloat, y: CGFloat)

public func scale(x x: CGFloat, y: CGFloat)
```
- UIViewController  
```swift
public func findOutputSeguesWithClassNameContains(className: String) -> [IBSwiftToolKit.StoryboardSegueTemplate]

public func presentErrorViewController(error: NSError?, title: String = default, okButton: String = default, animated: Bool = default, completion: (() -> Void)? = default)

public func addChildViewController(controller: UIViewController, toView view: UIView)

public func removeFromParentViewControllerCompletely()

@IBInspectable public var localizeableTitle: String? { get set }
```
