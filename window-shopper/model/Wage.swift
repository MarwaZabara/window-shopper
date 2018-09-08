//
//  Wage.swift
//  window-shopper
//
//  Created by Marwa Zabara on 9/7/18.
//  Copyright © 2018 Marwa Zabara. All rights reserved.
//

import Foundation
class Wage{
    class func GetHours (ForWage Wage:Double , AndPrice Price:Double ) ->Int {
        return Int(ceil(Price / Wage))
    }
}
