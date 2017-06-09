//
//  ViewController.swift
//  SeguePassData
//
//  Created by ayako_sayama on 2017-06-08.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//


import UIKit

class ViewController: UIViewController, ReceiverDelegate{
   
    @IBOutlet weak var buttonPressed: UIButton!
    @IBOutlet weak var palette: UIImageView!
    
   
    let message = "you got a message"
    let optMessage = "you got a optinal message"

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func bluePressed(_ sender: Any) {
        palette.backgroundColor = UIColor.blue
    }
    
    @IBAction func brownPressed(_ sender: Any) {
        palette.backgroundColor = UIColor.brown
    }
    
    @IBAction func greenPressed(_ sender: Any) {
        palette.backgroundColor = UIColor.green
    }

    
    @IBAction func buttonPress(_ sender: Any) {
        
        performSegue(withIdentifier: "messageSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ReceiverController {
            destination.colorsPassed = palette.backgroundColor
            destination.delegate = self
        }
    }
    
    func receiveColor(color: UIColor) {
        
        print("UIColor: \(color)")
        palette.backgroundColor = color
    }


}

