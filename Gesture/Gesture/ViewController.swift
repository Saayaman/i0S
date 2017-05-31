//
//  ViewController.swift
//  Gesture
//
//  Created by ayako_sayama on 2017-05-30.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
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
        print("swiped right")
    }

    func swipedLeft(){
        print("swiped left")
    }

    func swipedUp(){
        print("swiped up")
    }

    func swipedDown(){
        print("swiped down")
    }
    
    func doubleTapwithTwoFingers(){
        print("double tapped!")
    }
    
    func rotated(sender:UIRotationGestureRecognizer){
        if sender.state == .began {
            print("begin rotating")
        } else if sender.state == .changed{
            print("changed!")
            print("Rotation: \(sender.rotation)\n Velocity: \(sender.velocity)")
        } else if sender.state == .ended{
            print("ended")
        }
    }


}

