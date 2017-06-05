//
//  ViewController.swift
//  PassingDatainController
//
//  Created by ayako_sayama on 2017-06-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBAction func passText(_ sender: Any) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        myVC.stringPassed = topLabel.text!
        
        navigationController?.pushViewController(myVC, animated: true)
    }

}

