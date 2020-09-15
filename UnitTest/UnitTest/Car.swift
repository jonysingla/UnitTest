//
//  Car.swift
//  UnitTest
//
//  Created by Jony on 14/08/20.
//  Copyright © 2020 Jony. All rights reserved.
//

import Foundation

class Car {
   var miles = 0
   var carType: CarType
   var transmissionMode: CarTransmissionMode
   init(carType:CarType, transmissionMode:CarTransmissionMode){
      self.carType = carType
      self.transmissionMode = transmissionMode
   }
    func start(minutes: Int) {
        var speed = 0
        if self.carType == .Economy && self.transmissionMode == .Park {
            speed = 0
        }
        if self.carType == .Economy && self.transmissionMode == .Neutral {
            speed = 0
        }
        if self.carType == .Economy && self.transmissionMode == .Reverse {
            speed = 10
        }
        
        if self.carType == .Economy && self.transmissionMode == .Drive {
            speed = 35
        }
        if self.carType == .OffRoad && self.transmissionMode == .Drive {
            speed = 50
        }
        if self.carType == .Sport && self.transmissionMode == .Drive {
            speed = 70
        }
        self.miles = speed * (minutes / 60)
    }
}
enum CarType {
   case Economy
   case OffRoad
   case Sport
}
enum CarTransmissionMode {
   case Park
   case Reverse
   case Neutral
   case Drive
}
