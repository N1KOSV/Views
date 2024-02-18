//
//  LocationsViewModel.swift
//  Views
//
//  Created by Νίκος Βιντζηλαίος on 15/09/2023.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject{
    // All loaded locations
    @Published var locations: [Location]
    // Current location
    @Published var mapLocation: Location{
        didSet{
            UpdateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let MapSpan = MKCoordinateSpan(latitudeDelta: 0.1,  longitudeDelta: 0.1)
    
    //Show list of locations
    @Published var showLocationsList: Bool = false
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.UpdateMapRegion(location: locations.first!)
    }
    
     func UpdateMapRegion(location: Location){
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(center: location.Coordinates, span: MapSpan)
        }
    }
    
    func viewUserLocation(userLocation: CLLocationCoordinate2D) {
        let userLocationRegion = MKCoordinateRegion(center: userLocation, span: MapSpan)
        mapRegion = userLocationRegion
    }
    
    func toggleLocationsList(){
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }
    
    func showNextLocation(location: Location){
        withAnimation(.easeInOut){
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPressed(){
        
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation}) else {return}
        
        
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            showNextLocation(location: locations.first!)
            return
        }
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
        
        
        }
    
}
