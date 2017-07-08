//
//  ViewController.swift
//  UIAnimation
//
//  Created by ayako_sayama on 2017-07-06.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit
import Animation

class ViewController: UIViewController {


    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var topView: UIView!
    
//    let startPoint = CGPoint(x: 10, y: 10)
//    let endPoint = CGPoint(x: 100, y: 100)
//    let startColor = UIColor.black
//    let endColor = UIColor.red
    
    let startPoint = CGPoint(x: 10, y: 10)
    let endPoint = CGPoint(x: 100, y: 100)
    let startColor = UIColor.black
    let endColor = UIColor.red
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadTemplate()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        myView.center.y  += view.bounds.height
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                       animations: {
                        self.myView.center.y -= self.view.bounds.height
        },
                       completion: nil
        )
    }
    
    
    func loadTemplate(){
        let view = SampleView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 100))
        myView.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapped(_ sender: UIButton) {


        
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                       animations: {
                        self.myView.center.y += self.view.bounds.height
        },
                       completion: nil
        )
        
//        Animation.animate(identifier: "example", duration: 0.05,
//                          update: { (progress) -> Bool in
//                            self.topView.center = self.startPoint <~~ Curve.easeInEaseOut[progress] ~~> self.endPoint
//                            self.topView.backgroundColor = self.startColor <~~ progress ~~> self.endColor
//                            return true
//        })
    }

}

