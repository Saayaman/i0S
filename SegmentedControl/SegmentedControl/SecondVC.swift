//
//  SecondVC.swift
//  SegmentedControl
//
//  Created by ayako_sayama on 2017-06-06.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class SecondVC: ViewController{
    
    @IBOutlet weak var editBtn: UIButton!
    
    
    var tap:UITapGestureRecognizer?
    
    
    var positionX: CGFloat?
    var positionY: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        tap?.numberOfTapsRequired = 1
        self.view.addGestureRecognizer(tap!)
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        

            if let touch = touches.first {
                let position = touch.location(in: self.view)
                positionX = position.x
                positionY = position.y
                
            }
     

    }
    
    
    func doubleTapped(sender: UIGestureRecognizer){
        
        
        let touchLocation = sender.location(in: self.view)
        print("\(touchLocation.x), \(touchLocation.y))")
        
        let label = UITextField(frame: CGRect(x: (touchLocation.x), y: (touchLocation.y), width: 200, height: 21))
        label.backgroundColor = UIColor.blue
        label.textAlignment = .center
        label.text = "I'am a test label"
        view.addSubview(label)
    }
    
    
}
