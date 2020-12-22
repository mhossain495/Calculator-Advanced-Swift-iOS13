//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Mohammed Hossain on 12/21/20.
//  Copyright © 2020 Mohammed Hossain. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String)  -> Double? {
        
        // Functions to clear, convert to %, or invert value
        
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number / 100
        }
        
        return nil
    }
}

