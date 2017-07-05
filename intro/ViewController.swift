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
    3
    
    
    var displayValue: Double {
        
        get {
           return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
        
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            
            switch mathematicalSymbol {
            case "∏":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default: break
                
            }
            
        }
        
    }
}
