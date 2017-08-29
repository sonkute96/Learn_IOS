//
//  Artwork.swift
//  DemoMapKit
//
//  Created by Phạm Sơn on 7/25/17.
//  Copyright © 2017 Phạm Sơn. All rights reserved.
//


// --- Class is created to conform MKAnnotation.
import Foundation

// -- add MapKit library.

import MapKit

// -- add AddressBook library

import AddressBook

class Artwork : NSObject, MKAnnotation {
    
    let coordinate: CLLocationCoordinate2D
    
    let title : String!
    
    let locationName : String
    
    let discipline : String
    
    // create a constructor
    
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D){
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
    
        // khoi tao init cua NSObject.
        super.init()
    
    }
    
    var subtitle: String? {
        return locationName
    }
    
    
    func mapItem() -> MKMapItem {
        let addressDictionary = [String(kABPersonAddressStreetKey) : subtitle]
        
        let placeMark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDictionary)
        
        let mapItem = MKMapItem(placemark: placeMark)
        
        mapItem.name = title
        
        return mapItem
    }
    
}
