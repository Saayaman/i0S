//
//  City.swift
//  WeatherAPP2
//
//  Created by ayako_sayama on 2017-06-03.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class City{
    var weather: String
    var name: String
    
    init(_ weather:String, _ name:String) {
        self.weather = weather
        self.name = name
    }
}
