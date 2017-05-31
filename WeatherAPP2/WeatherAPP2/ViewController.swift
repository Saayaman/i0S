//
//  ViewController.swift
//  WeatherAPP2
//
//  Created by ayako_sayama on 2017-05-30.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let baseControllers = [city1.controller, city2.controller, city3.controller, city4.controller, city5.controller]
        
        tabBarController.viewControllers = baseControllers.map{UINavigationController(rootViewController: $0) }
        


    }
    
  
}

