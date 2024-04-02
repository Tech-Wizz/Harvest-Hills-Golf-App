//
//  MapViewController.swift
//  Harvest Hills Golf
//
//  Created by Kruize Christensen on 3/29/24.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    let minLatitude = 47.60075
    let maxLatitude = 47.60615
    let minLongitude = -111.98539
    let maxLongitude = -111.97588
    
    let minZoomLevel: CLLocationDistance = 5
    let maxZoomLevel: CLLocationDistance = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        let mapView = MKMapView(frame: view.bounds)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.delegate = self
        view.addSubview(mapView)
        
        // Initial region setup
        let center = CLLocationCoordinate2D(latitude: (minLatitude + maxLatitude) / 2, longitude: (minLongitude + maxLongitude) / 2)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: maxZoomLevel, longitudinalMeters: maxZoomLevel)
        mapView.setRegion(mapView.regionThatFits(region), animated: true)
    }
    
}
