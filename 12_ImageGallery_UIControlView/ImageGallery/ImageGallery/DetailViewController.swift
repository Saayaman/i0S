//
//  SecondViewController.swift
//  ImageGallery
//
//  Created by ayako_sayama on 2017-06-13.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate{

   
    
    var senderTag:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondVC.delegate = self
        secondVC.backGround
//        secondVC.contentSize = CGSize(width: view.bounds.width * 3, height: view.bounds.height)
        
        
        print("sea\(String(describing: senderTag))")
        
        self.imageView.image = UIImage(named: "sea\(String(describing: senderTag))")
//        secondVC.setZoomScale(1, animated: false)
        secondVC.setZoomScale(1,animated:false)

        secondVC.minimumZoomScale = 1
        secondVC.maximumZoomScale = 3
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }



}
