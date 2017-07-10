
import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: GMSMapView!
    @IBOutlet weak var myView: UIView!
    
    var manager:MapCLLocationManager!
    var delegate: MapViewDelegate!
    fileprivate var placesClient: GMSPlacesClient!

    var markers: [GMSMarker] = []
    var isVisible = false


    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = MapViewDelegate(self)
        manager = MapCLLocationManager(mapView)
        
        self.loadTemplate()
        
        let mapMaker = MapMaker()
        mapMaker.makeMarker(mapView)
        
        placesClient = GMSPlacesClient.shared()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        myView.center.y  += view.bounds.height
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
//                       animations: {
//                        self.myView.center.y -= self.view.bounds.height
//        },
//                       completion: nil
//        )
//    }
//    
    
    func loadTemplate(){
        let view = SampleView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        myView.addSubview(view)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonTapped() {
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                       animations: {
                        
                        if self.isVisible{
                            self.myView.center.y += self.view.bounds.height
                            self.isVisible = false
                        } else{
                            self.myView.center.y -= self.view.bounds.height
                            self.isVisible = true
                        }
        },
                       completion: nil
        )
        
    }

    
    
}


