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
