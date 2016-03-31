//
//  UIButton.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

extension UIButton {
    
    public var titleForNormalState: String? {
        get {
            return titleForState(.Normal)
        }
        
        set {
            setTitle(newValue, forState: .Normal)
        }
    }
    
   public  var titleForDisabledState: String? {
        get {
            return titleForState(.Disabled)
        }
        
        set {
            setTitle(newValue, forState: .Disabled)
        }
    }
    
    public var titleForSelectedState: String? {
        get {
            return titleForState(.Selected)
        }
        
        set {
            setTitle(newValue, forState: .Selected)
        }
    }
    
    public var titleForHighlightedState: String? {
        get {
            return titleForState(.Highlighted)
        }
        
        set {
            setTitle(newValue, forState: .Highlighted)
        }
    }
    
    // MARK: Localization
    
    @IBInspectable
    public var localizeableNormalTitle: String? {
        get {
            return nil
        }
        set {
            self.setTitle(newValue?.localized, forState: .Normal)
        }
    }
    
    @IBInspectable
    public var localizeableDisabledTitle: String? {
        get {
            return nil
        }
        set {
            self.setTitle(newValue?.localized, forState: .Disabled)
        }
    }
    
    @IBInspectable
    public var localizeableSelectedTitle: String? {
        get {
            return nil
        }
        set {
            self.setTitle(newValue?.localized, forState: .Selected)
        }
    }
    
    @IBInspectable
    public var localizeableHighlightedTitle: String? {
        get {
            return nil
        }
        set {
            self.setTitle(newValue?.localized, forState: .Highlighted)
        }
    }
    
}