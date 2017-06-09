//
//  DetailedViewController.swift
//  WeatherApp
//
//  Created by ayako_sayama on 2017-05-29.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let myLabel:UILabel = UILabel(frame: CGRect(x: 7, y: 200, width: 370, height: 100))
        myLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        myLabel.numberOfLines = 0
        myLabel.text = "This is a Detailed Explanation of the weather"
        
        view.addSubview(myLabel)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
