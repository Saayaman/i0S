//
//  SecondViewController.swift
//  ModalAnimation
//
//  Created by ayako_sayama on 2017-07-18.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var orangeBox: UIView!
    @IBOutlet weak var button: UIButton!
    let timing = UICubicTimingParameters(animationCurve: .easeInOut)
    var animator:UIViewPropertyAnimator!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        animator = UIViewPropertyAnimator(duration: 2.0, timingParameters: timing)
        animator.addAnimations {
            self.view.backgroundColor = UIColor.blue
        }
        
        animator.addAnimations {
            self.orangeBox.center.y = self.view.bounds.size.height
        }
        
        animator.addCompletion{_ in 
            self.button.center.y += self.view.bounds.size.height
        }
    }
    
        @IBAction func panGesture(_ gesture: UIPanGestureRecognizer) {
            let translation = gesture.translation(in: self.view)
            let translatedCenterY = view.center.y + translation.y
            let progress = translatedCenterY / self.view.bounds.size.height

            
            animator.fractionComplete = progress
        }
        
        @IBAction func pushed(_ sender: Any) {
            button = sender as! UIButton
            
            animator.startAnimation()
        }
        
}


