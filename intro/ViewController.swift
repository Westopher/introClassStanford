//
//  ViewController.swift
//  intro
//
//  Created by West Kraemer on 6/29/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel?
    
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        let textCurrentlyInDisplay = display!.text
        display!.text! = textCurrentlyInDisplay! + digit
    }
}
