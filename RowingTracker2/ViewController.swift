//
//  ViewController.swift
//  RowingTracker2
//
//  Created by Christoph Siedentop on 30.06.14.
//  Copyright (c) 2014 Christoph Siedentop. All rights reserved.
//

    import UIKit
    import MapKit
    import CoreLocation

    class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
        @IBOutlet var mapview: MKMapView = nil
        var locationManager : CLLocationManager!
        var tracker : Tracker!
                                
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            locationManager = CLLocationManager()
            locationManager.delegate = self
//            TODO: only available in iOS8. Check for iOS8.
//            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
            mapview.showsUserLocation = true
            mapview.delegate = self
            tracker = Tracker()
        }
        
        deinit {
            locationManager.delegate = nil
        }

        //#pragma mark - CLLocationManagerDelegate
        func locationManager(manager: CLLocationManager!, didUpdateLocations locations: AnyObject[]!) {
            println("Locations: \(locations)")
            
            let newLocation = locations[locations.count-1] as CLLocation
            let time = newLocation.timestamp.timeIntervalSinceNow
            
            if time < -180 {
                return
            }
            tracker.addLocation(locations[locations.count-1] as CLLocation)
        }
        
        //#pragma mark - MKMapViewDelegate
        func mapView(mapView:MKMapView, didUpdateUserLocation userLocation:MKUserLocation) {
            let loc = userLocation.coordinate
            let region = MKCoordinateRegionMakeWithDistance(loc, 250, 250)
            mapview.setRegion(region, animated:true)
        }

        


        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    }

    