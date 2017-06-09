
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let paris = City(Weather.clearnight,"paris")
        let barcelona = City(Weather.rain,"barcelona")
        let london = City(Weather.cloudy,"london")
        let berlin = City(Weather.wind,"berlin")
        let sanfrancisco = City(Weather.sunny,"sanfrancisco")
        
        let city1 = MakeCityView(paris, .featured)
        let city2 = MakeCityView(barcelona, .contacts)
        let city3 = MakeCityView(london,.downloads)
        let city4 = MakeCityView(berlin, .history)
        let city5 = MakeCityView(sanfrancisco, .search)
        
        
        let tabBarController = UITabBarController()
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
    
    init(_ city: City, _ icon:UITabBarSystemItem)
    {
        var count = 0
        self.city = city
        print(city.name)
        
        let weatherMaker = WeatherClass()
        weatherMaker.setWeather(weather: (city.weather))
        
        controller = CityViewController(city: city, weatherMaker: weatherMaker)
        controller.title = city.name

        controller.view.backgroundColor = weatherMaker.wcolor
        controller.tabBarItem = UITabBarItem(title: city.name, image: UIImage(named: city.name), tag: count)

        count += 1
    }
}
