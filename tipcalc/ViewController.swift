//
//  ViewController.swift
//  tipcalc
//
//  Created by INFINITY on 1/14/15.
//  Copyright (c) 2015 ALL ONE SUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBAction func editChanged(_ sender: AnyObject) {
        var tipPercentages=[0.15,0.18,0.2]
        let tipPercent=tipPercentages[tipSelector.selectedSegmentIndex]
        let billAmount=billField.text!._bridgeToObjectiveC().doubleValue
        let tip=billAmount*tipPercent
        let total=billAmount+tip
        
//        tipAmount.text="\(tip)"
//        totalAmount.text="\(total)"
        
        tipAmount.text=String(format: "$%.2f", tip)
        totalAmount.text=String(format: "$%.2f", total)
        TOTAL_DISPLAY.text=String(format: "$%.2f", total)
    }
    
    @IBAction func dismissKeyboard(_ sender: AnyObject) {view.endEditing(true)
    }
    @IBOutlet weak var tipSelector: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var TOTAL_DISPLAY: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

