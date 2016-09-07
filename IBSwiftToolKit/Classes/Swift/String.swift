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
    
    /*
    public func createViewController<T: UIViewController>(_ storyboard: UIStoryboard, _ type: T.Type) -> T? {
        return storyboard.instantiateViewController(withIdentifier: self) as? T
    }
    
    
    public func like(_ regex: String) -> Bool {
        if let regexp = try? NSRegularExpression(pattern: regex, options: .caseInsensitive) {
            return regexp.firstMatch(in: self, options: [], range: NSMakeRange(0, self.characters.count)) != nil
        }
        return false
    }
    
    
    public func firstMatchingRegexpPattern(_ pattern: String) -> String? {
        if let expr = try? NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive),
            let first = expr.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(), range: NSMakeRange(0, self.characters.count))
        {
            let r = first.range
            let range = characters.index(startIndex, offsetBy: r.location)...characters.index(startIndex, offsetBy: r.location + r.length)
            return substring(with: range)
        } else {
            return nil
        }
    }
    
    */
    
    public func allCharactersInSet(_ set: CharacterSet) -> Bool {
        for ch in self.utf16 {
            if !set.contains(UnicodeScalar(ch)!){ return false }
        }
        return true
    }
    
    
    
    
    public func oneOrMoreCharactersInSet(_ set: CharacterSet) -> Bool {
        for ch in self.utf16 {
            if set.contains(UnicodeScalar(ch)!){ return true }
        }
        return false
    }
    
    
    
    
    public func attributed(_ attrs: [String: AnyObject]) -> NSAttributedString {
        return NSAttributedString(string: self, attributes: attrs)
    }
    
    
    
    public var stringByDeletingPathExtension: String{
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
        for s in self.characters {
            if s == ch {return true}
        }
        return false
    }
    
    
    
    
    public func stringByappendingURLParameter(_ parameter: String, withValue value: String) -> String {
        return self + (hasCharacter("?") ? "&" : "?") + "\(parameter)=\(value)"
    }
    
    
    
    public func stringByAppendingURLParameters(_ paramValueDictionary: [String : AnyObject])-> String{
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
    
    
    
    public func formatDate(_ date: Date) -> String {
        let dtf = DateFormatter()
        dtf.dateFormat = self
        return dtf.string(from: date)
    }
    
    
    
    public func dateWithFormat(_ format: String) -> Date? {
        let dtf = DateFormatter()
        dtf.dateFormat = format
        return dtf.date(from: self)
    }
    
    
    
    public func format(_ args: CVarArg...) -> String {
        return String(format: self, arguments: args)
    }
    
    
    /*
    public func NSRangeOfString(_ string: String) -> NSRange? {
        if let range = range(of: string, options: NSString.CompareOptions.caseInsensitive, range: nil, locale: nil) {
            
            return NSMakeRange(self.characters.distance(from: self.startIndex, to: range.lowerBound), range.count)
        } else {
            return nil
        }
    }
    */
    
    
    public var clearedURLString: String {
        return replacingOccurrences(of: "/", with: "_").replacingOccurrences(of: ":", with: "_").replacingOccurrences(of: ".", with: "_")
    }
    
    // MARK: Localization
    
    
    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    public func localized(comment: String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    public func localizedFormat(_ arguments: CVarArg...) -> String {
        return String(format: NSLocalizedString(self, comment: ""), arguments: arguments)
    }
    
    
}
