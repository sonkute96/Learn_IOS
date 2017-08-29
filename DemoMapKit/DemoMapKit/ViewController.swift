//
//  ViewController.swift
//  DemoMapKit
//
//  Created by Phạm Sơn on 7/25/17.
//  Copyright © 2017 Phạm Sơn. All rights reserved.
//

import UIKit

// -- add MapKit library

import MapKit

class ViewController: UIViewController {

    
    // --- anh xa MapKit.
    @IBOutlet weak var myMapKit: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        // --- set the first location when map is running
        
        
        let theFirstLocation = CLLocation(latitude: 21.283921, longitude: -157.831661)
        
        let coordinateLocation =  CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661)
        
        // --- set regionRadius: CLLocationDistance
        
        // the region will be have north-south and east and west spans based on a distance of regionRadius
        
      
        // ---- run centerMapLocation method
        
        centerMapLocation(location: theFirstLocation)
        
        // -- show artWork
        
        showArtWork(coordinateLocation: coordinateLocation)
        
        
        // --- ViewController delegates
        
        myMapKit.delegate = true as? MKMapViewDelegate
    
    }
    
    // --- set centerMapLocation method
    
    
    
    func centerMapLocation(location:CLLocation){
        
        let regionRadius : CLLocationDistance = 1000
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        
        // set coordinate for map
        
        myMapKit.setRegion(coordinateRegion, animated: true)
        
    }

    
    // ----- to plot some interesting data around the current location. it depends on the current location.
    /* It includes :
     1. location name/
     2. discipline
     3. title
     4. latitude
     5. longitude.
     */
    
    // ----- show an Artwork on the map
    
    /* To show this on the map, must create a map annotation.
     1. To create a map annotation so you must have a class conforms MKAnnotation.
     
     */
    // ---- show artWork on map
    
    func showArtWork(coordinateLocation: CLLocationCoordinate2D){
        
        let artwork = Artwork(title: "King David Kalakaua",
                              locationName: "Waikiki Gateway Park",
                              discipline: "Sculpture",
                              coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
        
        myMapKit.addAnnotation(artwork)
    }
    
}

