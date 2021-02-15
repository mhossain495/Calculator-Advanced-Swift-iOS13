//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Mohammed Hossain on 12/21/20.
//  Copyright © 2020 Mohammed Hossain. All rights reserved.
//

import Foundation

struct  CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    // Functions to clear, convert to %, or invert value
    mutating func calculate(symbol: String)  -> Double? {
        
        if let n = number {
            
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n / 100
            } else if symbol == "+" {
                intermediateCalculation = (n1: n, calcMethod: symbol)
            } else if symbol == "=" {
                
            }
        }
        return nil
    }
}

