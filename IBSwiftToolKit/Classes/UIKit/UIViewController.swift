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
    
    
    public func findOutputSeguesWithClassNameContains(className: String) -> [StoryboardSegueTemplate] {
        if let segues = self.valueForKey("_storyboardSegueTemplates") as? [AnyObject] {
            let templates = segues
                .filter{ ($0.valueForKey("_segueClassName") as? String)?.containsString(className) == true}.map { segue -> StoryboardSegueTemplate? in
                    if let controllerID = segue.valueForKey("_destinationViewControllerIdentifier") as? String, segueClassName = segue.valueForKey("_segueClassName") as? String {
                        return StoryboardSegueTemplate(segueClassName: segueClassName, destinationViewControllerIdentifier: controllerID)
                    } else {
                        return nil
                    }
                }.filter { $0 != nil }.map { $0! }
            return templates
        }
        return []
    }
    
    public func presentErrorViewController(error: NSError?, title: String = "Error", okButton: String = "OK", animated: Bool = true, completion: (()-> Void)? = nil) {
        
        if NSThread.mainThread() != NSThread.currentThread() {
            dispatch_async(dispatch_get_main_queue(), {[weak self] () -> Void in
                self?.presentErrorViewController(error, animated: animated, completion: completion)
                })
        }
        
        let alert = UIAlertController(title: title, error: error)
        alert.addAction(UIAlertAction(title: okButton, style: .Cancel, handler: nil))
        
        presentViewController(alert, animated: animated, completion: completion)
        
    }
    
    public func addChildViewController(controller: UIViewController, toView view: UIView) {
        addChildViewController(controller)
        controller.view.frame = view.bounds
        view.addSubview(controller.view)
        controller.didMoveToParentViewController(self)
    }
    
    public func removeFromParentViewControllerCompletely() {
        self.view.removeFromSuperview()
        self.removeFromParentViewController()
    }
    
    @IBInspectable
    public var localizeableTitle: String? {
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
    
    public func parentViewControllerWithClass<T>(`class`: T.Type) -> T? {
        var currentViewController = self
        while let parent = currentViewController.parentViewController {
            if parent is T {
                return parent as? T
            }
            currentViewController = parent
        }
        return nil
    }
    
}