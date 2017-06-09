//
//  ReceiverController.swift
//  SeguePassData
//
//  Created by ayako_sayama on 2017-06-08.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

protocol ReceiverDelegate {
    func receiveColor(color:UIColor)
}


class ReceiverController: UIViewController{
    
    @IBOutlet weak var palette2: UIImageView!

    var colorsPassed:UIColor?
    var delegate: ReceiverDelegate?
    
    override func viewDidLoad() {
        palette2.backgroundColor = colorsPassed
    }
    

    @IBAction func orangePressed(_ sender: Any) {
        palette2.backgroundColor = UIColor.orange
    }
  
    @IBAction func redPressed(_ sender: Any) {
        palette2.backgroundColor = UIColor.red
    }
    
    @IBAction func yellowPressed(_ sender: Any) {
        palette2.backgroundColor = UIColor.yellow
    }
    
    @IBAction func ClosePage(_ sender: Any) {
        let secondVCColor:UIColor = palette2.backgroundColor!
        
        print("UIColor of SecondVC: \(String(describing: palette2.backgroundColor))")
        delegate?.receiveColor(color: secondVCColor)
        
        self.dismiss(animated: false, completion: nil)
    }
    
//    @IBAction func Pressed(_ sender: Any) {
//        
//
//
//    }
    

    
    
}

