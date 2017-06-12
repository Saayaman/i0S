//
//  ViewController.swift
//  Gesture
//
//  Created by ayako_sayama on 2017-05-30.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var label = UILabel()

    
    let swipeRightRec = UISwipeGestureRecognizer()
    let swipeLeftRec = UISwipeGestureRecognizer()
    let swipeUpRec = UISwipeGestureRecognizer()
    let swipeDownRec = UISwipeGestureRecognizer()
    
    //two fingers to rotate
    let rotateRec = UIRotationGestureRecognizer()
    let tapRec = UITapGestureRecognizer()
    
    //there are others! pinch, longpress, etc...
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Some Sentence"
        label.frame = CGRect(x: view.bounds.size.width/2, y: 50, width: view.bounds.size.width, height: 120)
        label.numberOfLines = 3
        label.textAlignment = .center
//        label.sizeToFit()
        label.backgroundColor = UIColor.yellow
        label.center = view.center
        
        view.addSubview(label)
        

        swipeRightRec.direction = UISwipeGestureRecognizerDirection.right
        swipeLeftRec.direction = UISwipeGestureRecognizerDirection.left
        swipeUpRec.direction = .up
        swipeDownRec.direction = .down
        
        swipeRightRec.addTarget(self, action: #selector(swipedRight))
        swipeLeftRec.addTarget(self, action: #selector(swipedLeft))
        swipeUpRec.addTarget(self, action: #selector(swipedUp))
        swipeDownRec.addTarget(self, action: #selector(swipedDown))
    
        
        
        tapRec.numberOfTapsRequired = 2
        tapRec.numberOfTapsRequired = 2
        
        tapRec.addTarget(self, action: #selector(doubleTapwithTwoFingers))
        rotateRec.addTarget(self, action: #selector(rotated(sender:)))
        

//        tapRec.addTartget(self, action: #selector(doubleTapwithTwoFingers))
//        rotateRec.addTarget(self, action: #selector(rotated(sender: )))
        
    
        self.view.addGestureRecognizer(swipeRightRec)
        self.view.addGestureRecognizer(swipeLeftRec)
        self.view.addGestureRecognizer(swipeUpRec)
        self.view.addGestureRecognizer(swipeDownRec)
        
        self.view.addGestureRecognizer(rotateRec)
        self.view.addGestureRecognizer(tapRec)
        
        
    }
    
    func swipedRight(){
        label.text = "swiped right!"
    }

    func swipedLeft(){
        label.text = "swiped left!"
    }

    func swipedUp(){
        label.text = "swiped up!"
    }

    func swipedDown(){
        label.text = "swipted down!"
    }
    
    func doubleTapwithTwoFingers(){
        label.text = "double tapped!"
    }
    
    func rotated(sender:UIRotationGestureRecognizer){
        if sender.state == .began {
            label.text = "begin rotating"
        } else if sender.state == .changed{
            label.text = "changed!+ \n Rotation: \(sender.rotation)\n Velocity: \(sender.velocity)"
//            print("Rotation: \(sender.rotation)\n Velocity: \(sender.velocity)")
        } else if sender.state == .ended{
            label.text = "ended"
        }
    }


}

