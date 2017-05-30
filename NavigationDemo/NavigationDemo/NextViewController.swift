//
//  NextViewController.swift
//  NavigationDemo
//
//  Created by ayako_sayama on 2017-05-29.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    
    @IBOutlet weak var nextView: UIView!
    
    @IBOutlet weak var Image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Image.image = UIImage(named: "bathroom.jpg")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
