//
//  CalculatorBrain.swift
//  intro
//
//  Created by West Kraemer on 7/5/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    private var accumulator: Double?
    
    mutating func performOperation(_ symbol: String) {
        
        switch symbol {
        case "∏":
            accumulator = Double.pi
        case "√":
            if let operand = accumulator {
            accumulator = sqrt(operand)
            }
        default: break
        }
        
        
    }
    
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
        
    }
    
    var result: Double? {
        get {
            return accumulator
        }
    }
    
    
}
