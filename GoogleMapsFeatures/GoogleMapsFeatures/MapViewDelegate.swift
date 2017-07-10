//
//  MapViewDelegate.swift
//  CollectionView3
//
//  Created by ayako_sayama on 2017-07-09.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewDelegate: NSObject, GMSMapViewDelegate{
    
    var vc:ViewController = ViewController()

    
    init(_ vc:ViewController) {
        super.init()
        
        self.vc = vc
        vc.mapView.delegate = self
    }


    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        print("Tapped marker")
        vc.buttonTapped()
        return true
    }
    
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
        
        
        print("Tapped at Coordinate")
    }
    

    

}
