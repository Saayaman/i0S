//
//  ViewController.swift
//  UIAnimation
//
//  Created by ayako_sayama on 2017-07-06.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var topView: UIView!

    var isVisible = true

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadTemplate()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        myView.center.y  += view.bounds.height
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                       animations: {
                        self.myView.center.y -= self.view.bounds.height
        },
                       completion: nil
        )
    }
    
    
    func loadTemplate(){
        let view = SampleView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        myView.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapped(_ sender: UIButton) {

        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                       animations: {
                        
                        if self.isVisible{
                            self.myView.center.y += self.view.bounds.height
                            self.isVisible = false
                        } else{
                            self.myView.center.y -= self.view.bounds.height
                            self.isVisible = true
                        }
        },
                       completion: nil
        )

    }

}

