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
            return title(for: UIControlState())
        }
        
        set {
            setTitle(newValue, for: UIControlState())
        }
    }
    
   public  var titleForDisabledState: String? {
        get {
            return title(for: .disabled)
        }
        
        set {
            setTitle(newValue, for: .disabled)
        }
    }
    
    public var titleForSelectedState: String? {
        get {
            return title(for: .selected)
        }
        
        set {
            setTitle(newValue, for: .selected)
        }
    }
    
    public var titleForHighlightedState: String? {
        get {
            return title(for: .highlighted)
        }
        
        set {
            setTitle(newValue, for: .highlighted)
        }
    }
    
    // MARK: Localization
    
    @IBInspectable
    public var localizableNormalTitle: String? {
        get {
            return nil
        }
        set {
            self.setTitle(newValue?.localized, for: UIControlState())
        }
    }
    
    @IBInspectable
    public var localizableDisabledTitle: String? {
        get {
            return nil
        }
        set {
            self.setTitle(newValue?.localized, for: .disabled)
        }
    }
    
    @IBInspectable
    public var localizableSelectedTitle: String? {
        get {
            return nil
        }
        set {
            self.setTitle(newValue?.localized, for: .selected)
        }
    }
    
    @IBInspectable
    public var localizableHighlightedTitle: String? {
        get {
            return nil
        }
        set {
            self.setTitle(newValue?.localized, for: .highlighted)
        }
    }
    
}
