//
//  Tracker.swift
//  RowingTracker2
//
//  Created by Christoph Siedentop on 04.07.14.
//  Copyright (c) 2014 Christoph Siedentop. All rights reserved.
//
import Foundation
import CoreLocation

class Tracker : NSObject {
    var locations:CLLocation[]
    
    init() {
        locations = []
    }
    
    func addLocation(loc: CLLocation) {
//        println("Location added to tracker \(loc)")
        locations.append(loc)
    }

}
