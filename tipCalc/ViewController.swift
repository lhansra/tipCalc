//
//  ViewController.swift
//  tipCalc
//
//  Created by Lovpreet Hansra on 12/28/19.
//  Copyright © 2019 Lovpreet Hansra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount
        let bill = Double(billField.text!) ?? 0
        //Calc tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipPercentage.selectedSegmentIndex]
        let total = bill + tip
        //Update tip and total labels
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        label2.text = String(format:"$%.2f", total/2)
        label3.text = String(format:"$%.2f", total/3)
        label4.text = String(format:"$%.2f", total/4)
    }
}

