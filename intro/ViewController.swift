//
//  ViewController.swift
//  intro
//
//  Created by West Kraemer on 6/29/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("\(digit) was pressed")
    }
   

}

