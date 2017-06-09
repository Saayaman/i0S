//
//  TabbarControler.swift
//  WeatherApp
//
//  Created by ayako_sayama on 2017-05-29.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class TabbarControler: UITabBarController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupVcs()
    }
    
    private func setupVcs()
    {
        let vc1 = UIViewController()
        let vc2 = UIViewController()
        let vc3 = UIViewController()
        
        vc1.view.backgroundColor = .red
        vc2.view.backgroundColor = .yellow
        vc3.view.backgroundColor = .green
        
        vc1.title = "vc1"
        vc2.title = "vc2"
        vc3.title = "vc3"
        
        vc1.tabBarItem = UITabBarItem(title: "vc1", image: nil, tag: 0)
        vc2.tabBarItem = UITabBarItem(title: "vc2", image: nil, tag: 1)
        vc3.tabBarItem = UITabBarItem(title: "vc3", image: nil, tag: 2)
        
        let nvc1 = UINavigationController(rootViewController: vc1)
        let nvc2 = UINavigationController(rootViewController: vc2)
        let nvc3 = UINavigationController(rootViewController: vc3)
        
        self.viewControllers = [nvc1, nvc2, nvc3]
    }
    
}
