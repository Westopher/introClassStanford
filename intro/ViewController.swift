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
    
    var userIsInTheMiddleOfTyping = false
    
    /*gets the number from the button (for numbers) and puts it into the result label*/
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            if "." != digit || !textCurrentlyInDisplay.contains(".") {
                display.text = textCurrentlyInDisplay + digit
            }
        } else {
            display.text = "." == digit ? "0." : digit
            userIsInTheMiddleOfTyping = true
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
    
    //sets the brain variable to the struct CalcBr() in the model
    private var brain = CalculatorBrain()
    

    @IBAction func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            brain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(mathematicalSymbol)
            }
        if let result = brain.result {
            displayValue = result
        }
    }
}
