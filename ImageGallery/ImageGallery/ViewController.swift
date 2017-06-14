//
//  ViewController.swift
//  ImageGallery
//
//  Created by ayako_sayama on 2017-06-13.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    let cellidentifier = "cell"
    let headerViewIdentifier "headerview""
    
    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    scrollView.contentSize = CGSize(width: view.bounds.size.width, height: 1000)
    scrollView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
    scrollView.contentOffset = CGPoint(x: -100, y: -100)
    scrollView.delegate = self
        
        let images = ["photo1","photo2","photo3","photo4","photo5","photo6","photo7","photo8","photo9","photo10"]
        
        
    scrollView.addSubview(imageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

