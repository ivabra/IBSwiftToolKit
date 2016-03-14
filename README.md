IBSwiftToolKit contains a lot useful extensions, functions and custom operators.

You can use CocoaPods to integrate library with your project:
```swift
 pod 'IBSwiftToolKit', :git => 'https://github.com/ivabra/IBSwiftToolKit'
```
**Functions**
- `Init(some, initBlock)` - initializer pattern.
```swift
var view = Init(UIView) {[unowned self] in
	$0.backgroundColor = UIColor.whiteColor;
	self.view.addSubview($0)
}
```
**Operators**
- `=!` - unsafe type casting operator. Instead `var a: T = b as! T` you can use `var a: T =! b`.
- `=!` - safe type casting operator.   
Instead `var a: T = b as? T` you can use `var a: T =? b`.

**Foundation**
- NSAttributedString
- NSDateFormatter
- NSObject
- NSRange

**Swift**
- Array
- Int
- String

**CoreGrahics**
- CGAffineTransform
- CGColor
- CGImage
- CGPoint
- CGRect

**UIKit**
- UIAlertViewController
- UIBarButtonItem
- UIButton
- UIDevice
- UISearchBar
- UISegmentControl
- UIView
- UIViewController
