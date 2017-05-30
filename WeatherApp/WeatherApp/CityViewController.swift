//
//  CityViewController.swift
//  WeatherApp
//
//  Created by ayako_sayama on 2017-05-29.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
    
    var city: City?

    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        let button: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2-35, y: view.bounds.height/2, width: 100, height: 50))
        
        button.backgroundColor = UIColor.red
        button.addTarget(self,action: #selector(showWeatherDetails), for: .touchUpInside)
        view.addSubview(button)

        let textCity = UITextField(frame: CGRect(x: view.bounds.width/2-35, y: view.bounds.height+50, width: 200, height: 100))
        
        print(city?.name)
        textCity.text = city?.name

//        textCity.font = UIFont(name:(city?.name)!, size: 18)
 
    }

    func showWeatherDetails(){
        let newVC = DetailedViewController()
        newVC.view.backgroundColor = UIColor.yellow
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
 

}
