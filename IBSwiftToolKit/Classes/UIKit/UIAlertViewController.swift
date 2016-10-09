//
//  UIAlertViewController.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    public class func presentAlertWithTitle(_ title: String?, andMessage message: String?, andPreferredStyle style: UIAlertControllerStyle, withCancelTitle cancel: String?, andActionTitle action: String?, andActionStyle actionStyle: UIAlertActionStyle, inViewController controller: UIViewController, withActionBlock block: @escaping ()->()){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        alert.addAction(UIAlertAction(title: cancel, style: UIAlertActionStyle.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: action, style: actionStyle, handler: {_ in
            block()
        }))
        
        controller.present(alert, animated: true, completion: nil)
    }
    public convenience init(title: String, error: NSError?, unknownErrorDescription unknown: String = IBSwiftToolKit.UIAlertViewController.DefaultErrorDescription) {
        let desc: String
        let options: String!
        let reason: String!
        let suggestions: String!
        
        if let error = error { 
            desc = error.userInfo[NSLocalizedDescriptionKey] as? String ?? unknown
            options = (error.userInfo[NSLocalizedRecoveryOptionsErrorKey] as? Array<String>)?.joined(separator: ", ")
            reason = error.userInfo[NSLocalizedFailureReasonErrorKey] as? String
            suggestions = error.userInfo[NSLocalizedRecoverySuggestionErrorKey] as? String
        } else {
            desc = unknown
            options = nil
            reason = nil
            suggestions = nil
        }
        
        var message = desc
        if reason != nil {
            message += "\n\(reason)"
        }
        if suggestions != nil {
            message += "\n\(suggestions)"
        }
        if options != nil {
            message += "\n\(options)"
        }
        
        self.init(title: title, message: message, preferredStyle: .alert)
    }
}
