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
        
        
        class City{
            var weather: String
            var name: String
            
            init(_ weather:String, _ name:String) {
                self.weather = weather
                self.name = name
            }
        }
        
        let paris = City("sunny","paris")
        let tokyo = City("cloudy","Tokyo")
        let london = City("rain","london")
        let cairo = City("sunny","Cairo")
        let helsinki = City("snowy","Helsinki")
        
        cities = [paris, tokyo, london, cairo, helsinki]
        
        
        window?.rootViewController = TabbarControler()
        window?.makeKeyAndVisible()
        
        return true
    }

  
}

