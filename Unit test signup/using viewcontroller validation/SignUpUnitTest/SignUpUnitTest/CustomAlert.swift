//
//  CustomAlert.swift
//  Flexyn
//
//  Created by day on 07/11/17.
//  Copyright © 2017 day. All rights reserved.
//

import UIKit

class CustomAlert: NSObject {

    class func showAlertMsg(message: String, viewController: UIViewController)  {
        
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
        
        // if we don't want to use custom, use in particular class
        
//        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
//        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
//        self.present(alert, animated: true, completion: nil)
    }
    
    class func showAlertWithButton(title : String?, message : String, parentView : UIViewController, buttonTitles : [String], buttonCallBack : ((String) -> ())?){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        for buttonTitle in buttonTitles{
            alert.addAction(UIAlertAction(title: buttonTitle, style: UIAlertActionStyle.default, handler: {(action:UIAlertAction) in
                if let buttonCallBack = buttonCallBack{
                    buttonCallBack(buttonTitle)
                }
            }))
        }
        
        parentView.present(alert, animated: true, completion: nil)
    }
    
}
