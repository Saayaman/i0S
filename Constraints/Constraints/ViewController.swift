//
//  ViewController.swift
//  Constraints
//
//  Created by ayako_sayama on 2017-05-25.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //したと同じ
    //        green.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 40.0).isActive = true
    
    //        let green = NSLayoutConstraint(item: self.green, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 40)
    
    
    //IBOutletを使うと、 view.addView(greenをしなくてもいいらしい。)
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    override func viewDidLoad() {
        
        //super important!
        green.translatesAutoresizingMaskIntoConstraints = false
        //(1)
        green.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        //(2)
        green.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        //(3)
        green.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        //(4)
        green.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        //(5)
        label.widthAnchor.constraint(equalTo: green.widthAnchor, multiplier:0.8).isActive = true
        //(6)
        label.topAnchor.constraint(equalTo: green.topAnchor, constant: 80).isActive = true
        //(7)
        label.centerXAnchor.constraint(equalTo: green.centerXAnchor).isActive = true
        
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        
        //(8)
        button1.leadingAnchor.constraint(equalTo: green.leadingAnchor).isActive = true
        //(9)
        button2.trailingAnchor.constraint(equalTo: green.trailingAnchor).isActive = true
        //(10)
        button1.widthAnchor.constraint(equalTo: button2.widthAnchor).isActive = true
        //(11)
        button2.topAnchor.constraint(equalTo: button1.topAnchor).isActive = true
        //(12)
        button2.leadingAnchor.constraint(equalTo: button1.trailingAnchor, constant: 15.0).isActive = true
        //(13)
        button1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true

    }

}

