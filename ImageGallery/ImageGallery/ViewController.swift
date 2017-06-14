//
//  ViewController.swift
//  ImageGallery
//
//  Created by ayako_sayama on 2017-06-13.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, UIGestureRecognizerDelegate{

    let cellidentifier = "cell"
    let images = ["sea1","sea2","sea3","sea4","sea5","sea6","sea7"]
    var imageViews:[UIImageView] = []
    var imageView1: UIImageView!
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControll: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: view.bounds.width * 3, height: view.bounds.height)
        
        
        
        for (index,image) in images.enumerated(){
            let imageV = setImage(name: image, tag: index)
            imageViews.append(imageV)
            scrollView.addSubview(imageV)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
     func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }

    func setImage(name:String, tag: Int)-> UIImageView{
        let imageView = UIImageView(image: UIImage(named: name))
        imageView.tag = tag
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        scrollView.addSubview(imageView)
        
        
        if imageView.tag == 0{
            imageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true

        } else {
            let previousView = imageViews[imageView.tag - 1]
            imageView.leadingAnchor.constraint(equalTo: previousView.trailingAnchor, constant: 20).isActive = true
        }
        
        imageView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 20).isActive = true
        imageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.4).isActive = true
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1).isActive = true
        
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap(_:)))
        tap.delegate = self
        
        imageView.addGestureRecognizer(tap)
        
        return imageView
    }
    
    func tap(_ sender: UITapGestureRecognizer) {
        print("tap")
        //print("\(sender.view?.tag)")
        performSegue(withIdentifier: "DetailsViewController", sender: sender.view?.tag)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DetailsViewController
        
        if let tag = sender as? Int {
            vc.senderTag = tag
        }
    }

}

