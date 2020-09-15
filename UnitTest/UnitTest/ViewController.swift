//
//  ViewController.swift
//  UnitTest
//
//  Created by Jony on 14/08/20.
//  Copyright © 2020 Jony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ferrari = Car(carType: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 20)
        print(ferrari.miles) // => 140

    }


}

