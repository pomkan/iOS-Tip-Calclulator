//
//  ViewController.swift
//  tips
//
//  Created by Reina Hashimoto on 1/22/16.
//  Copyright © 2016 Reina Hashimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        topLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChanged(sender: AnyObject) {
        
            let tipPercentages = [0.18, 0.2, 0.22]
            let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
            let billAmount = NSString(string: billField.text!).doubleValue
            let tip = billAmount * tipPercentage
            let total = billAmount + tip
        
            topLabel.text = "$\(tip)"
            totalLabel.text = "$\(total)"
        
            topLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
        
    }
    @IBAction func onTap
        (sender: AnyObject)
        {
            view.endEditing(true)
    }
}

