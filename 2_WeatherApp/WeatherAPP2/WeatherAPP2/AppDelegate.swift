//
//  AppDelegate.swift
//  WeatherAPP2
//
//  Created by ayako_sayama on 2017-05-30.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var cities: Array<Any> = []


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
    
        window?.rootViewController = TabbarControler()
        window?.makeKeyAndVisible()
   
        
        return true
    }

}

