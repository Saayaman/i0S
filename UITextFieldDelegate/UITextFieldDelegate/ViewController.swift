//
//  ViewController.swift
//  UITextFieldDelegate
//
//  Created by ayako_sayama on 2017-05-31.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var myTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var string = myTextView.text
        
        let characterSet = NSCharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz")
        if string.isEmpty{
            return true
        }
        
        if let rangeofChar = string.rangeOfCharacter(from: characterSet){
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func textField(_ textField: UITextField, changesCharacter: NSRangem replacementString:String) -> Bool {
        
        let startingLength = myTextView.text?= charcters.count ?? 00
        return newLength <= 5
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        <#code#>
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        <#code#>
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        <#code#>
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        <#code#>
    }

}

