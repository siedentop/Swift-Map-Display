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
        var locationmgr : CLLocationManager!
                                
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            locationmgr = CLLocationManager()
            locationmgr.delegate = self
//            TODO: only available in iOS8. Check for iOS8.
//            locationmgr.requestWhenInUseAuthorization()
            mapview.showsUserLocation = true
            mapview.delegate = self
        }
        
//        override func didDetermineState

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    }

    