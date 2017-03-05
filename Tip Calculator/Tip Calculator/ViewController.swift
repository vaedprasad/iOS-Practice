//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Vaed Prasad on 3/4/17.
//  Copyright © 2017 Vaed Prasad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var tipAmountSegmentedController: UISegmentedControl!
    
    @IBOutlet weak var billAmountTextField: UITextField!

    @IBOutlet weak var tipAmountLabel: UILabel!

    @IBOutlet weak var totalAmountLabel: UILabel!

    @IBAction func calcButtonPressed(sender: AnyObject) {
        //get tip amount percentage
        //get bill amount and cast it from string to double
        //calculate the tip amount
        //calculate total bill amount
        //display tip amount inside tipAmountLabel.text
        //display total amount inside totalAmountLabel.text
        
        if let userInput = billAmountTextField.text {
        
            if userInput.isEmpty == false {
            
        var tipPercentage = 0.0;
        
        if tipAmountSegmentedController.selectedSegmentIndex == 0 {
            tipPercentage = 0.15
        } else if tipAmountSegmentedController.selectedSegmentIndex == 1 {
            tipPercentage = 0.20
        } else {
            tipPercentage = 0.25
        }
        
        let billAmount = Double(userInput)! //! means assume there is a text field (Bang Operator) ! means treat it like its safe
        //Edge Cases
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        tipAmountLabel.text = "Tip Amount: \(tip)"
        totalAmountLabel.text = "Total: \(total)"
        }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipAmountLabel.text = ""
        totalAmountLabel.text = ""
    }    
    
}

