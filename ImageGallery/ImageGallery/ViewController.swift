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

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        scrollView.delegate = self
        
        scrollView.contentSize = CGSize(width: (scrollWidth * 5), height: scrollHeight)
        scrollView.isPagingEnabled = true
        
        for index in 0..<images.count{

            let imageView = UIImageView(frame: CGRect(x: scrollWidth * CGFloat(index), y: 0, width: scrollWidth, height: scrollHeight))
            
            
            imageView.backgroundColor = UIColor.yellow
            imageView.image = UIImage(named: images[index])
            imageView.tag = index
            
            let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.tap(_:)))
            tap.delegate = self
            
            imageView.isUserInteractionEnabled = true

            imageView.addGestureRecognizer(tap)
            scrollView.addSubview(imageView)

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    func tap(_ sender: UITapGestureRecognizer) {
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

