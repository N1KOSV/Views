//
//  Location.swift
//  Views
//
//  Created by Νίκος Βιντζηλαίος on 15/09/2023.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {

    
    
    let Name: String
    let CityName: String
    let Coordinates: CLLocationCoordinate2D
    let Description: String
    let ImageNames: [String]
    let Link: String
    
    var id: String {
        Name + CityName
    }
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
    
}
