//
//  ViewController.swift
//  NavigationDemo
//
//  Created by ayako_sayama on 2017-05-29.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var image1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image1.image = UIImage(named: "dining_room.jpg")
        
        var imagenum = 10
        
        var count = 0
        for _ in 0...imagenum{
            let imageView = UIImageView(frame: CGRect(x: count, y: 0, width: 50, height: 100))
            view.addSubview(imageView)
            imageView.backgroundColor = UIColor.blue
            count += 60
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

