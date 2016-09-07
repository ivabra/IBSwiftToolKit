//
//  UIViewController.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit


public struct StoryboardSegueTemplate {
    public var segueClassName: String
    public var destinationViewControllerIdentifier: String
}

extension UIViewController {
    
    
    public func findOutputSeguesWithClassNameContains(_ className: String) -> [StoryboardSegueTemplate] {
        if let segues = self.value(forKey: "_storyboardSegueTemplates") as? [AnyObject] {
            let templates = segues
                .filter{ ($0.value(forKey: "_segueClassName") as? String)?.contains(className) == true}.map { segue -> StoryboardSegueTemplate? in
                    if let controllerID = segue.value(forKey: "_destinationViewControllerIdentifier") as? String, let segueClassName = segue.value(forKey: "_segueClassName") as? String {
                        return StoryboardSegueTemplate(segueClassName: segueClassName, destinationViewControllerIdentifier: controllerID)
                    } else {
                        return nil
                    }
                }.filter { $0 != nil }.map { $0! }
            return templates
        }
        return []
    }
    
    public func presentErrorViewController(_ error: NSError?, title: String = IBSwiftToolKit.UIAlertViewController.errorTitle, okButton: String = "OK", animated: Bool = true, completion: (()-> Void)? = nil) {
        
        if Thread.main != Thread.current {
            DispatchQueue.main.async(execute: {[weak self] () -> Void in
                self?.presentErrorViewController(error, animated: animated, completion: completion)
             })
        }
        
        let alert = UIAlertController(title: title, error: error)
        alert.addAction(UIAlertAction(title: okButton, style: .cancel, handler: nil))
        
        present(alert, animated: animated, completion: completion)
        
    }
    
    public func addChildViewController(_ controller: UIViewController, toView view: UIView) {
        addChildViewController(controller)
        controller.view.frame = view.bounds
        view.addSubview(controller.view)
        controller.didMove(toParentViewController: self)
    }
    
    public func removeFromParentViewControllerCompletely() {
        self.view.removeFromSuperview()
        self.removeFromParentViewController()
    }
    
    @IBInspectable
    public var localizableTitle: String? {
        get {
            return title
        }
        set {
            self.title = newValue?.localized
        }
    }
    
    
    
    /// Find the nearest parent view Ccontroller with specified `class`.
    ///- Parameter class: Class of desired parent view controller.
    ///- Returns: Nearest parent view controller with specified `class`, or `nil`.
    
    public func parentViewControllerWithType<T>(_ class: T.Type) -> T? {
        var currentViewController = self
        while let parent = currentViewController.parent {
            if parent is T {
                return parent as? T
            }
            currentViewController = parent
        }
        return nil
    }
    
}
