//
//  Landmark.swift
//  LandMarksUITests
//
//  Created by Jonatan Mora Escareño on 27/01/24.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable,Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var descripction: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude:Double
    }
    
}
