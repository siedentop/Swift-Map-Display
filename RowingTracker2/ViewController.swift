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

    class ViewController: UIViewController, MKMapViewDelegate {
        @IBOutlet var mapview: MKMapView = nil
        var locationmgr : CLLocationManager!
                                
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            locationmgr = CLLocationManager()
            locationmgr.requestWhenInUseAuthorization()
            mapview.showsUserLocation = true
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    }

