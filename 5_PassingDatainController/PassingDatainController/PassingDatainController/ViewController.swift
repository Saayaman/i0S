//
//  ViewController.swift
//  PassingDatainController
//
//  Created by ayako_sayama on 2017-06-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func passText(_ sender: Any) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let textString = textField.text!
        
        myVC.stringPassed = textString
        navigationController?.pushViewController(myVC, animated: true)
    }

}

