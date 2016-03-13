//
//  String.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit

extension String {
    public var image: UIImage? {
        return UIImage(named: self)
    }
    
    
    
    
    public func createViewController<T: UIViewController>(storyboard: UIStoryboard, _ type: T.Type) -> T? {
        return storyboard.instantiateViewControllerWithIdentifier(self) as? T
    }
    
    
    
    
    public func like(regex: String) -> Bool {
        if let regexp = try? NSRegularExpression(pattern: regex, options: .CaseInsensitive) {
            return regexp.firstMatchInString(self, options: [], range: NSMakeRange(0, self.characters.count)) != nil
        }
        return false
    }
    
    
    public func firstMatchingRegexpPattern(pattern: String) -> String? {
        if let expr = try? NSRegularExpression(pattern: pattern, options: NSRegularExpressionOptions.CaseInsensitive),
            first = expr.firstMatchInString(self, options: NSMatchingOptions(), range: NSMakeRange(0, self.characters.count))
        {
            let r = first.range
            let range = startIndex.advancedBy(r.location)...startIndex.advancedBy(r.location + r.length)
            return substringWithRange(range)
        } else {
            return nil
        }
    }
    
    
    
    public func allCharactersInSet(set: NSCharacterSet) -> Bool {
        for ch in self.utf16 {
            if !set.characterIsMember(ch){ return false }
        }
        return true
    }
    
    
    
    
    public func oneOrMoreCharactersInSet(set: NSCharacterSet) -> Bool {
        for ch in self.utf16 {
            if set.characterIsMember(ch){ return true }
        }
        return false
    }
    
    
    
    
    public func attributed(attrs: [String: AnyObject]) -> NSAttributedString {
        return NSAttributedString(string: self, attributes: attrs)
    }
    
    
    
    public var stringByDeletingPathExtension: String{
        return (self as NSString).stringByDeletingPathExtension
    }
    
    
    public init?(json: [NSObject: AnyObject]) {
        
        if let data = try? NSJSONSerialization.dataWithJSONObject(json, options: NSJSONWritingOptions()),
            string = NSString(data: data, encoding: NSUTF8StringEncoding) {
            self = string as String
        } else {
            return nil
        }
        
    }
    
    
    public func hasCharacter(ch: Character) -> Bool {
        for s in self.characters {
            if s == ch {return true}
        }
        return false
    }
    
    
    
    
    public func stringByappendingParameter(parameter: String, withValue value: String) -> String {
        return self + (hasCharacter("?") ? "&" : "?") + "\(parameter)=\(value)"
    }
    
    
    
    public func stringByAppendingParameters(paramValueDictionary: [String : AnyObject])-> String{
        var arr = [String]()
        for i in paramValueDictionary {
            arr.append("\(i.0)=\(i.1)")
        }
        
        
        var input = self
        if  !hasCharacter("?") {
            input += "?" + arr.removeAtIndex(0)
        }
        return arr.reduce(input, combine: {$0 + "&" + $1})
    }
    
    
    
    public func formatDate(date: NSDate) -> String {
        let dtf = NSDateFormatter()
        dtf.dateFormat = self
        return dtf.stringFromDate(date)
    }
    
    
    
    public func dateWithFormat(format: String) -> NSDate? {
        let dtf = NSDateFormatter()
        dtf.dateFormat = format
        return dtf.dateFromString(self)
    }
    
    
    
    public func format(args: CVarArgType...) -> String {
        return String(format: self, arguments: args)
    }
    
    
    public func NSRangeOfString(string: String) -> NSRange? {
        if let range = rangeOfString(string, options: NSStringCompareOptions.CaseInsensitiveSearch, range: nil, locale: nil) {
            return NSMakeRange(self.startIndex.distanceTo(range.startIndex), range.count)
        } else {
            return nil
        }
    }
    
    public func clearURLString() -> String {
        return stringByReplacingOccurrencesOfString("/", withString: "_").stringByReplacingOccurrencesOfString(":", withString: "_").stringByReplacingOccurrencesOfString(".", withString: "_")
    }
    
    // MARK: Localization
    
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localized(comment comment: String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    func localizedFormat(arguments: CVarArgType...) -> String {
        return String(format: NSLocalizedString(self, comment: ""), arguments: arguments)
    }
    
    
}