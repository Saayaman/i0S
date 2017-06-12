//
//  ViewController.swift
//  MyScrollView
//
//  Created by ayako_sayama on 2017-06-12.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var scrollView: UIScrollView!
    
    var redView:UIView!
    var greenView:UIView!
    var blueView:UIView!
    var yellowView:UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        redView = UIView(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        greenView = UIView(frame: CGRect(x: 150, y: 150, width: 150, height: 200))
        blueView = UIView(frame: CGRect(x: 40, y: 400, width: 200, height: 150))
        yellowView = UIView(frame: CGRect(x: 100, y: 600, width: 180, height: 150))
        
        redView.backgroundColor = UIColor.red
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
        yellowView.backgroundColor = UIColor.yellow
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        scrollView.contentSize = view.bounds.size
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.contentOffset = CGPoint(x: -100, y: -100)
        scrollView.delegate = self
        
        
        view.addSubview(scrollView)
        
        view.addSubview(redView)
        view.addSubview(greenView)
        view.addSubview(blueView)
        view.addSubview(yellowView)
        
//        setupGestureRecognizer()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

