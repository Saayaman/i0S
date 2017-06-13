//
//  ViewController.swift
//  TipCalculatorApp
//
//  Created by ayako_sayama on 2017-06-08.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let tipamount = (Double(billAmountTextField.text!))! * 0.15

        tipAmount.text = String(tipamount)
        
        
    }

}

