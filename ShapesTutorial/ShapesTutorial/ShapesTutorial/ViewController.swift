//
//  ViewController.swift
//  ShapesTutorial
//
//  Created by Silviu Pop on 7/27/15.
//  Copyright (c) 2015 WeHeartSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(ViewController.didTap(_:)))
        
        self.view.addGestureRecognizer(tapGR)
    }
    
    func didTap(_ tapGR: UITapGestureRecognizer) {
        
        let tapPoint = tapGR.location(in: self.view)
        
        let shapeView = ShapeView(origin: tapPoint)
        
        self.view.addSubview(shapeView)
    }

}

