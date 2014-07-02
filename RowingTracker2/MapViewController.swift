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

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    var location: CLLocationManager!
    @IBOutlet var mapview: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        location = CLLocationManager()
        location.delegate = self
        location.requestAlwaysAuthorization()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

