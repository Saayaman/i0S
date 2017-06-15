//
//  ViewController.swift
//  ImageGallery
//
//  Created by ayako_sayama on 2017-06-13.
//  Copyright © 2017 ayako_sayama. All rights reserved.


import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, UIGestureRecognizerDelegate, UIPageViewControllerDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControll: UIPageControl!
    
    
    var scrollWidth : CGFloat = UIScreen.main.bounds.size.width
    var scrollHeight : CGFloat = UIScreen.main.bounds.size.height
    
    let cellidentifier = "cell"
    let images = ["sea1","sea2","sea3","sea4","sea5"]
    var imageViews:[UIImageView] = []
//    var imageView1: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        scrollView.delegate = self
        
        scrollView.contentSize = CGSize(width: (scrollWidth * 5), height: scrollHeight)
        scrollView.isPagingEnabled = true
        
        for (index,image) in images.enumerated(){
            let imageV = setImage(name: image, tag: index)
            imageViews.append(imageV)
            scrollView.addSubview(imageV)
        }
        
        view.insertSubview(pageControll, at: 0)
        view.bringSubview(toFront: pageControll)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setImage(name:String, tag: Int)-> UIImageView{
        

        let imageView = UIImageView(image: UIImage(named: name))
        imageView.tag = tag
        imageView.backgroundColor = UIColor.red
        
        imageView.frame = CGRect(x: scrollWidth * CGFloat(imageView.tag + 1), y: 0, width: scrollWidth, height: scrollHeight)
        
        print("xpotision tag0: \(scrollWidth * CGFloat(tag))")
        imageView.backgroundColor = UIColor.red
        
        
        imageView.isUserInteractionEnabled = true
        
        imageView.translatesAutoresizingMaskIntoConstraints = false

//        
//        if imageView.tag == 0{
//            imageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0).isActive = true
//
//        } else {
//            let previousView = imageViews[imageView.tag - 1]
//            imageView.leadingAnchor.constraint(equalTo: previousView.trailingAnchor, constant: 0).isActive = true
//        }
        
//        imageView.widthAnchor.constraint(equalToConstant: scrollWidth).isActive = true
//        imageView.heightAnchor.constraint(equalToConstant: scrollHeight).isActive = true
//

        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap(_:)))
        tap.delegate = self
        imageView.addGestureRecognizer(tap)
        scrollView.addSubview(imageView)

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
    
    
    @IBAction func changePage(_ sender: UIPageControl) {
        scrollView.scrollRectToVisible(CGRect(x: scrollWidth * CGFloat(pageControll.currentPage), y: 0, width: scrollWidth, height: scrollHeight), animated: true)
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        setIndiactorForCurrentPage()
    }
    
    func setIndiactorForCurrentPage()  {
        let page = (scrollView?.contentOffset.x)!/scrollWidth
        pageControll?.currentPage = Int(page)
        
    }

}

