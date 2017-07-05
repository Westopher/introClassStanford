//
//  ViewController.swift
//  intro
//
//  Created by West Kraemer on 6/29/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userTyping {
            let textCurrentlyInDisplay = display.text
            display.text = textCurrentlyInDisplay! + digit
        } else {
            display.text = digit
            userTyping = true
        }
    }
    
    var displayValue: Double {
        
        get {
           return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
        
    }
    
    private var brain = CalculatorBrain()

    
    @IBAction func performOperation(_ sender: UIButton) {
        if userTyping {
            brain.setOperand(displayValue)
            userTyping = false
        }
        
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(mathematicalSymbol)
            }
        if let result = brain.result {
            displayValue = result
        }
    }
}
