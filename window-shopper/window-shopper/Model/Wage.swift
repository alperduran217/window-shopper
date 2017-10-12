//
//  Wage.swift
//  window-shopper
//
//  Created by Mehmet Alper Duran on 12.10.2017.
//  Copyright © 2017 Mehmet Alper Duran. All rights reserved.
//

import Foundation

class Wage {
    class func getHours (forwage wage: Double, andPrice price: Double) -> Int  {
        return Int(ceil(price / wage))
    }
}
