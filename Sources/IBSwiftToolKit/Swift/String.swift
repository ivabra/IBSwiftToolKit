import UIKit

extension String {

  public func allCharactersInSet(_ set: CharacterSet) -> Bool {
    for ch in self.utf16 {
      if !set.contains(UnicodeScalar(ch)!) { return false }
    }
    return true
  }

  public func oneOrMoreCharactersInSet(_ set: CharacterSet) -> Bool {
    for ch in self.utf16 {
      if set.contains(UnicodeScalar(ch)!) { return true }
    }
    return false
  }

  public func attributed(_ attrs: [NSAttributedString.Key: Any]) -> NSAttributedString {
    return NSAttributedString(string: self, attributes: attrs)
  }

  public func attributed(_ attrs: [String: Any]) -> NSAttributedString {
    var resultAttributes = [NSAttributedString.Key: Any]()
    for (key, value) in attrs {
      resultAttributes[NSAttributedString.Key(key)] = value
    }
    return NSAttributedString(string: self, attributes: resultAttributes)
  }

  public var stringByDeletingPathExtension: String {
    return (self as NSString).deletingPathExtension
  }

  public init?(json: [AnyHashable: Any]) {
    if let data = try? JSONSerialization.data(withJSONObject: json, options: JSONSerialization.WritingOptions()),
      let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue) {
      self = string as String
    } else {
      return nil
    }

  }

  public func hasCharacter(_ ch: Character) -> Bool {
    return firstIndex(of: ch) != nil
  }

  public func stringByappendingURLParameter(_ parameter: String, withValue value: String) -> String {
    return self + (hasCharacter("?") ? "&" : "?") + "\(parameter)=\(value)"
  }

  public func stringByAppendingURLParameters(_ paramValueDictionary: [String: AnyObject]) -> String {
    var arr = [String]()
    for i in paramValueDictionary {
      arr.append("\(i.0)=\(i.1)")
    }

    var input = self
    if  !hasCharacter("?") {
      input += "?" + arr.remove(at: 0)
    }

    return arr.reduce(input, {$0 + "&" + $1})
  }

  public func format(_ args: CVarArg...) -> String {
    return String(format: self, arguments: args)
  }

}
