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
    
    
    private var operations: Dictionary<String,Double> = [
        "∏" : Double.pi,
        "e" : M_E
    ]
    mutating func performOperation(_ symbol: String) {
        if let constant = operations[symbol] {
            accumulator = constant
            
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
