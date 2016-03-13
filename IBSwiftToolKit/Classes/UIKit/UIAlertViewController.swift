//
//  UIAlertViewController.swift
//  IBSwiftToolKit
//
//  Created by Ivan Brazhnikov on 13.03.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import Foundation

extension UIAlertController {
    public class func presentAlertWithTitle(title: String?, andMessage message: String?, andPreferredStyle style: UIAlertControllerStyle, withCancelTitle cancel: String?, andActionTitle action: String?, andActionStyle actionStyle: UIAlertActionStyle, inViewController controller: UIViewController, withActionBlock block: ()->()){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        alert.addAction(UIAlertAction(title: cancel, style: UIAlertActionStyle.Cancel, handler: nil))
        alert.addAction(UIAlertAction(title: action, style: actionStyle, handler: {_ in
            block()
        }))
        
        controller.presentViewController(alert, animated: true, completion: nil)
    }
}