
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
        
        let paris = City("sunny","paris")
        let tokyo = City("cloudy","Tokyo")
        let london = City("rain","london")
        let cairo = City("sunny","Cairo")
        let helsinki = City("snowy","Helsinki")
        
        
        let vc1 = UIViewController()
        let vc2 = UIViewController()
        let vc3 = UIViewController()
        let vc4 = UIViewController()
        let vc5 = UIViewController()
        
        vc1.view.backgroundColor = .red
        vc2.view.backgroundColor = .yellow
        vc3.view.backgroundColor = .green
        vc4.view.backgroundColor = .blue
        vc5.view.backgroundColor = .purple
        
        
        vc1.title = paris.name
        vc2.title = tokyo.name
        vc3.title = london.name
        vc4.title = cairo.name
        vc5.title = helsinki.name
        

        vc1.tabBarItem = UITabBarItem(title: vc1.title, image: UIImage(named: "paris"), tag: 0)
        vc2.tabBarItem = UITabBarItem(title: vc2.title, image: UIImage(named:"barcelona"), tag: 1)
        vc3.tabBarItem = UITabBarItem(title: vc3.title, image: UIImage(named:"london"), tag: 2)
        vc4.tabBarItem = UITabBarItem(title: vc4.title, image: UIImage(named:"berlin"), tag: 3)
        vc5.tabBarItem = UITabBarItem(title: vc5.title, image: UIImage(named:"sanfrancisco"), tag: 4)

        
        let nvc1 = UINavigationController(rootViewController: vc1)
        let nvc2 = UINavigationController(rootViewController: vc2)
        let nvc3 = UINavigationController(rootViewController: vc3)
        let nvc4 = UINavigationController(rootViewController: vc4)
        let nvc5 = UINavigationController(rootViewController: vc5)
        
        self.viewControllers = [nvc1, nvc2, nvc3,nvc4,nvc5]
    }
    
}

