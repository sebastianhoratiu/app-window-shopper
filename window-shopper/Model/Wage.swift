//
//  Wage.swift
//  window-shopper
//
//  Created by Sebastian Horatiu on 06/04/2018.
//  Copyright © 2018 Sebastian Horatiu. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        // wage refers to hourly wage
        let hoursToWork = Int(ceil(price / wage))
        
        // If someone would change this function as below,
        // the unit tests would fail, the change of logic would be caught
//        let hoursToWork = Int(round(price / wage))
        
        print("You need to work \(hoursToWork) hours to buy this item.")
        return hoursToWork
    }
}
