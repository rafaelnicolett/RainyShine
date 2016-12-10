//
//  File.swift
//  RainyShinyCloudy
//
//  Created by Rafael Nicoleti on 10/12/16.
//  Copyright © 2016 Rafael Nicoleti. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}

