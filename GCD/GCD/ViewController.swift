//
//  ViewController.swift
//  GCD
//
//  Created by ayako_sayama on 2017-07-10.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        simpleQueues()
//        queueWithQos()
        
//        concurrentQueue()
//        if let queue = inactiveQueue{
//            queue.activate()
//        }
        
//        queueWithDelay()
        

//        globalQueue()
//        fetchImage()
        disPatchItem()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func simpleQueues(){
        //when you create a queue, you can put a 1. label, and put a 2. quality
        let queue = DispatchQueue(label: "com.ayakosayama.GCD")
        queue.sync {
            for i in 0..<10{
                print("red",i)
            }
        }
        
        for i in 100..<110{
            print("blue",i)
        }
    }

    func queueWithQos(){
//        let queue = DispatchQueue(label: "com.derrick.myqueue1", qos: .userInitiated)
        
        let queue = DispatchQueue(label: "com.derrick.myqueue1", qos: .background)
        
        // .utility = doesnt matter when
//        let queue2 = DispatchQueue(label: "com.derrick.myqueue2", qos: .utility)
        
        let queue2 = DispatchQueue(label: "com.derrick.myqueue2", qos: .userInteractive)
        
        
        queue.async {
            for i in 0..<10{
                print("🔵",i)
            }
            
        }
        
        queue2.async {
            for i in 100..<110{
                print("🔴",i)
            }
        }
        
        for i in 1000..<1010{
            print("⚫️",i)
        }
    }
    
    var inactiveQueue: DispatchQueue!
    
    func concurrentQueue(){
        let anotherQueue = DispatchQueue(label: "com.derrick.anotherqueue", qos: .utility, attributes: [.initiallyInactive, .concurrent])
        
        inactiveQueue = anotherQueue
        
        
        anotherQueue.async {
            for i in 0..<10{
                print("🔵",i)
            }
            
        }
        
        anotherQueue.async {
            for i in 100..<110{
                print("🔴",i)
            }
        }
        
        anotherQueue.async {
            for i in 1000..<1010{
                print("⚫️",i)
            }
        }
        
    }
    
    
    func queueWithDelay(){
        let delayqueue = DispatchQueue(label: "com.ayakosayama.delayqueue", qos: .userInteractive)
        
        let additinalTime:DispatchTimeInterval = .seconds(2)
        delayqueue.asyncAfter(deadline: .now() + additinalTime){
            print(Date())
        }
        
    }
    
    func globalQueue(){
        let globalQueue = DispatchQueue.global()
        globalQueue.async {
            //assigns a non-used thread randomly
            for i in 1000..<1010{
                print("⚫️",i)
            }
        }
    }
    
    
    func fetchImage(){
        
        
        let imageURL: URL = URL(string: "https://worldstrides.com/wp-content/uploads/2015/07/12-Chureito-pagoda-and-Mount-Fuji-Japan.jpg")!
        
        //this enables the UI to be loaded first, and when Image id downloaded, UI is update!
        (URLSession(configuration: URLSessionConfiguration.default)).dataTask(with: imageURL, completionHandler: { (imageData, response, error) in
            
            if let data = imageData {
                
                //you have to make main thread async or else image won't be stored.
                DispatchQueue.main.async {
                    print("downloaded?")
                    self.imageView.image = UIImage(data: data)
                }
            }
        }).resume()

    }
    
    
    func disPatchItem(){
        var value = 10
        
        let workItem = DispatchWorkItem {
            for i in 10..<20{
                print(value + i)
                value = value + i
            }
        }
        workItem.perform()
        let queue = DispatchQueue.global(qos: .utility)
        
        queue.async(execute: workItem)
        
        //it’s invoked when the work item is dispatched.
        workItem.notify(queue: DispatchQueue.main) {
            print("value = ", value)
        }
        
    }
    
    
}

