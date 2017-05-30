//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Derrick Park on 2017-05-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
//        window?.rootViewController = CityViewController()
        window?.rootViewController = TabbarControler()
        window?.makeKeyAndVisible()
        return true
        
   
        enum Weather{
            case sunny, cloudy, rainy, swony
        }
        
        /*
        class City{
            var weather: String
            var name: String
            
            init(_ weather:String, _ name:String) {
                self.weather = weather
                self.name = name
            }
        }
 */
        
        let paris = City("sunny","paris")
        let tokyo = City("cloudy","Tokyo")
        let london = City("rain","london")
        let cairo = City("sunny","Cairo")
        let helsinki = City("snowy","Helsinki")
        
        
        let tabBarController = UITabBarController()
        
//        class MakeCityView{
//
//            
//            var city:City
//            var controller:CityViewController
//            
//            init(_ city:City, _ color:UIColor) {
//                
//        
//                
//                var count = 0
//                self.city = city
//                controller = CityViewController()
//                
//                //controller.city = paris
//                
//                controller.title = city.name
//                controller.view.backgroundColor = color
//                controller.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: count)
//                count += 1
//            }
//        }
        
        let city1 = MakeCityView(paris, .blue)
        let city2 = MakeCityView(tokyo, .red)
        let city3 = MakeCityView(london, .brown)
        let city4 = MakeCityView(cairo, .green)
        let city5 = MakeCityView(helsinki, .purple)
        
        let baseControllers = [city1.controller, city2.controller, city3.controller, city4.controller, city5.controller]
        
        tabBarController.viewControllers = baseControllers.map{UINavigationController(rootViewController: $0) }
    
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
    


}

class MakeCityView
{
    var city:City
    var controller:CityViewController
    
    init(_ city: City, _ color:UIColor)
    {
        var count = 0
        self.city = city
        print(city.name)
        
        controller = CityViewController()
        controller.title = city.name
        controller.view.backgroundColor = color
        controller.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: count)
        count += 1
    }
}
