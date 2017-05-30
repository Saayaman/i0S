//
//  ViewController.swift
//  practice3_animation
//
//  Created by ayako_sayama on 2017-05-25.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let boxView = UIView(frame: CGRect.zero)
    let squareBtn = UIButton(type: .system)
    let portraitBtn = UIButton(type: .system)
    let landscapeBtn = UIButton(type: .system)
    
    var boxHeightConstraint = NSLayoutConstraint.init()
    var boxWidthtConstraint = NSLayoutConstraint.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Box view　と Button自体のinit
        boxView.translatesAutoresizingMaskIntoConstraints = false
        boxView.backgroundColor = UIColor.yellow
        view.addSubview(boxView)
        
        squareBtn.translatesAutoresizingMaskIntoConstraints = false
        landscapeBtn.translatesAutoresizingMaskIntoConstraints = false
        portraitBtn.translatesAutoresizingMaskIntoConstraints = false

        squareBtn.setTitle("Square", for: .normal)
        squareBtn.backgroundColor = UIColor.green
        squareBtn.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)

        portraitBtn.setTitle("Portrait", for: .normal)
        portraitBtn.backgroundColor = UIColor.blue
        portraitBtn.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        
        landscapeBtn.setTitle("Landscape", for: .normal)
        landscapeBtn.backgroundColor = UIColor.red
        landscapeBtn.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        
        
        view.addSubview(squareBtn)
        view.addSubview(portraitBtn)
        view.addSubview(landscapeBtn)
        
        //This is chaining the 3 buttons!
        let btnFormat = "|-20-[squareBtn(==portraitBtn)]-20-[portraitBtn(==landscapeBtn)]-20-[landscapeBtn]-20-|"
        let btnConstraints = NSLayoutConstraint.constraints(withVisualFormat: btnFormat, options: .alignAllCenterY, metrics: nil, views: ["landscapeBtn":landscapeBtn,"squareBtn":squareBtn,"portraitBtn":portraitBtn])
        
        NSLayoutConstraint.activate(btnConstraints)
        
        
        //Constraint を init
        squareBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50.0).isActive = true
        boxView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0.0).isActive = true
        boxView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0.0).isActive = true
        
        boxHeightConstraint = NSLayoutConstraint.init(item: boxView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 500)
        boxHeightConstraint.isActive = true
        
        boxWidthtConstraint = NSLayoutConstraint.init(item: boxView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 500)
        boxWidthtConstraint.isActive = true
        
    }
    
    func resizeFramingView(_ sender: UIButton) {
        var newWidth: CGFloat = 0.0
        var newHeight: CGFloat = 0.0
        if (sender == self.squareBtn) {
            newWidth = 500.0
            newHeight = 500.0
        } else if (sender == self.portraitBtn) {
            newWidth = 350.0
            newHeight = 550.0
        } else if (sender == self.landscapeBtn) {
            newWidth = 900.0
            newHeight = 300.0
        }
        
        UIView.animate(withDuration: 2.0) {
            self.boxHeightConstraint.constant = newHeight
            self.boxWidthtConstraint.constant = newWidth
            self.view.layoutIfNeeded()
        }
    }


}

