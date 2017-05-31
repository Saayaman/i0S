
import UIKit

class City{
    
    var weather: Weather
    var name: String
    
    init(_ weather: Weather, _ name:String) {
//        self.weather = weather
        self.weather = weather
        self.name = name
    }
}


enum Weather{
    case clearday, clearnight, sunny, snow, wind, cloudy, cloudynight, rain
}


class WeatherClass{
    
    var wname: String = "default"
    var wcolor:UIColor = UIColor.blue
    var wimage:UIImage = #imageLiteral(resourceName: "default")
    
    func setWeather(weather:Weather){
               
        switch weather {
        case .clearday:
            wname = "clearday"
            wcolor = UIColor(red: 0, green: 0.7725, blue: 0.9098, alpha: 1.0)
            wimage = #imageLiteral(resourceName: "clearday")
        case .clearnight:
            wname = "clearnight"
            wcolor = UIColor(red: 0, green: 0.2118, blue: 0.8, alpha: 1.0)
            wimage = #imageLiteral(resourceName: "clearnight")
        case .sunny:
            wname = "Sunny"
            wcolor = UIColor(red: 1, green: 0.7647, blue: 0, alpha: 1.0)
            wimage = #imageLiteral(resourceName: "Sunny")
        case .snow:
            wname = "Snowy"
            wcolor = UIColor(red: 0.8667, green: 0.9647, blue: 1, alpha: 1.0)
            wimage = #imageLiteral(resourceName: "snow")
        case .wind:
            wname = "wind"
            wcolor = UIColor(red: 0.5882, green: 1, blue: 0.8196, alpha: 1.0)
            wimage = #imageLiteral(resourceName: "wind")
        case .rain:
            wname = "rain"
            wcolor = UIColor(red: 0.0902, green: 0.5098, blue: 0.8275, alpha: 1.0)
            wimage = #imageLiteral(resourceName: "rain")
        default:
            wname = "Default"
            wcolor = UIColor(red: 0.3294, green: 0.8196, blue: 1, alpha: 1.0)
            wimage = #imageLiteral(resourceName: "default")
            
        }
        
    }
    
}
