//
//  FirstViewController.swift
//  ModalAnimation
//
//  Created by ayako_sayama on 2017-07-18.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var orangeCenterYConstraint: NSLayoutConstraint!
    @IBOutlet weak var pinkCenterYConstraint: NSLayoutConstraint!
    @IBOutlet weak var greenTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var blueTopConstraint: NSLayoutConstraint!

    @IBOutlet weak var boxGreenCenterYConstraint: NSLayoutConstraint!
    @IBOutlet weak var redBox: UIView!

    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //それぞれ画面から出す
        orangeCenterYConstraint.constant += view.bounds.width
        pinkCenterYConstraint.constant += view.bounds.width
        greenTopConstraint.constant += view.bounds.height
        redBox.alpha = 0.0

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseOut, animations: {
            self.orangeCenterYConstraint.constant -= self.view.bounds.width
            self.greenTopConstraint.constant -= self.view.bounds.height
            self.view.layoutIfNeeded()
            
        },completion:nil)
        
        
        UIView.animate(withDuration: 1.5, delay: 0.5, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.1, options: .curveEaseIn, animations: {
            self.pinkCenterYConstraint.constant -= self.view.bounds.width
            self.view.layoutIfNeeded()
            
        //終わったらアニメーションする
        }, completion: {(finished: Bool) in
            
            UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseOut, animations: {
                self.redBox.alpha = 1
            }, completion: nil)
            
            UIView.animate(withDuration: 0.5, delay:1.5, options: .curveEaseIn, animations: {
                self.blueTopConstraint.constant += 200
                self.view.layoutIfNeeded()
                
            }, completion: nil)
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
