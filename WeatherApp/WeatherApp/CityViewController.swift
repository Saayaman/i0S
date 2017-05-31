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
    var weatherMaker: WeatherClass?
    
     //問題!!!
    
    convenience init(city:City, weatherMaker:WeatherClass){
        
        self.init(nibName: nil, bundle: nil)

        self.city = city
        self.weatherMaker = weatherMaker
        
    }

    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        
        let button: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2-35, y: view.bounds.height/2, width: 100, height: 50))
        
        button.backgroundColor = UIColor.red
        button.addTarget(self,action: #selector(showWeatherDetails), for: .touchUpInside)
        view.addSubview(button)
        
        
        let textCity = UILabel(frame: .zero)
        
        textCity.font = UIFont.boldSystemFont(ofSize: 30)
        textCity.text = city?.name
        textCity.textAlignment = .center
        
        if ((city?.name) != nil) {
            print(city?.name ?? "no city")
        }
        
        //you have to add this before constraints!
        self.view.addSubview(textCity)

        textCity.translatesAutoresizingMaskIntoConstraints = false
        textCity.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textCity.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        
    
        let iconView = UIImageView(image: weatherMaker?.wimage)
        
        self.view.addSubview(iconView)
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        iconView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive = true

    }

    func showWeatherDetails(){
        let newVC = DetailedViewController()
        newVC.view.backgroundColor = UIColor.yellow
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    

}
