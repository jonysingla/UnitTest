//
//  ViewController.swift
//  APIUnitTest
//
//  Created by Jony on 18/08/20.
//  Copyright © 2020 Jony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.loginBtnAction()
    }

    
    func loginBtnAction() {
        let objLoginDataManager = LoginDataManager()
        objLoginDataManager.loginDataManager(firstName: "iOS", lastName: "test", timeStamp: "2020-08-20", callBack: {(isSuccess, errorMesssage)   in
            let strErrorMsg = errorMesssage
            let status = isSuccess
            if(status) {
                print("status ------------", status)
            } else {
                print("Error", strErrorMsg ?? "jony errorMesssage")
            }
        })
    }
}

