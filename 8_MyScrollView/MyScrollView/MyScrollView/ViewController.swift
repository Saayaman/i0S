//
//  ViewController.swift
//  MyScrollView
//
//  Created by ayako_sayama on 2017-06-12.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    var imageView: UIImageView!
    
    var redView:UIView!
    var greenView:UIView!
    var blueView:UIView!
    var yellowView:UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: Int(view.bounds.size.width), height:800)
        imageView.backgroundColor = UIColor.brown
        
        imageView.isUserInteractionEnabled = true
        view.addSubview(imageView)
        
        let panGesture = UIPanGestureRecognizer(target: self, action:(#selector(handlePanGesture(panGesture:))))
        imageView.addGestureRecognizer(panGesture)

        
        redView = UIView(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        greenView = UIView(frame: CGRect(x: 150, y: 150, width: 150, height: 200))
        blueView = UIView(frame: CGRect(x: 40, y: 400, width: 200, height: 150))
        yellowView = UIView(frame: CGRect(x: 100, y: 600, width: 180, height: 150))
        
        redView.backgroundColor = UIColor.red
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
        yellowView.backgroundColor = UIColor.yellow
        
        imageView.addSubview(redView)
        imageView.addSubview(greenView)
        imageView.addSubview(blueView)
        imageView.addSubview(yellowView)
        
    }
    
    func handlePanGesture(panGesture:UIPanGestureRecognizer){
        
        let translation = panGesture.translation(in: self.view)
        
        panGesture.view?.center.y += translation.y
        panGesture.setTranslation(CGPoint.zero, in: self.view)

    }

//    override func viewDidAppear(_ animated: Bool) {
//        
//        super.viewDidAppear(animated)
//        view.bounds.origin.y += 100
//    }

}

