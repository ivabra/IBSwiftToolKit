import Foundation

extension NSAttributedString {

  public convenience init(attributeStrings: AnyObject...) {
    let str = NSMutableAttributedString()
    for string in attributeStrings {
      if let attrString = string as? NSAttributedString {
        str.append(attrString)
      } else if let simpleString = string as? String {
        str.append(NSAttributedString(string: simpleString))
      } else {
        str.append(NSAttributedString(string: "\(string)"))
      }
    }
    self.init(attributedString: str)
  }

}
