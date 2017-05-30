//
//  AppDelegate.swift
//  TabBarController
//
//  Created by ayako_sayama on 2017-05-29.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        //TabBar を初期化
        let tabBarController = UITabBarController()
        
        //それぞれのボタンにviewコントローラをつける
        let favoritesVC = ViewController()
        favoritesVC.title = "Favorites"
        favoritesVC.view.backgroundColor = UIColor.orange

        let downloadsVC = ViewController()
        downloadsVC.title = "Downloads"
        downloadsVC.view.backgroundColor = UIColor.green
        
        let historyVC = ViewController()
        historyVC.title = "History"
        historyVC.view.backgroundColor = UIColor.yellow
        
        
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag:0)
        downloadsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag:1)
        historyVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag:2)
        
        
        let baseControllers = [favoritesVC, downloadsVC, historyVC]
        
        tabBarController.viewControllers = baseControllers.map{UINavigationController(rootViewController: $0) }
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }


    //ui object gets hardware screen size

}

