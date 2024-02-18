//
//  LocationPreviewView.swift
//  Views
//
//  Created by Νίκος Βιντζηλαίος on 15/02/2024.
//

import SwiftUI
import MapKit

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }
            VStack(spacing: 8){
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 10)
            .fill(.ultraThinMaterial)
            .offset(y: 45))
        .cornerRadius(10)
        .clipped()
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View{
        ZStack {
            Color.blue.ignoresSafeArea()
            LocationPreviewView(location: LocationsDataService.locations.first!)
                .padding()
        }
        .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView{
    private var imageSection: some View {
        ZStack {
            if let imageName = location.ImageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(4)
        .background(Color.accentColor)
        .cornerRadius(10)
        
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(location.Name)
                .font(.title2)
                .fontWeight(.bold)
            Text(location.CityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    

    
    private var learnMoreButton: some View {
        Button {
            let coordinate = CLLocationCoordinate2D(latitude: location.Coordinates.latitude, longitude:location.Coordinates.longitude)
            // Create a map item representing the location
            let placemark = MKPlacemark(coordinate: coordinate)
            // Create a map item
            let mapItem = MKMapItem(placemark: placemark)
            // Open the location in Maps app
            mapItem.openInMaps()
        }
        label:  {Text("Πάμε!")
                .font(.headline)
                .frame(width: 125, height: 35)}
                .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        Button {
            vm.nextButtonPressed()
        }
        label:  {Text("Επόμενη")
                .font(.headline)
                .frame(width: 125, height: 35)}
                .buttonStyle(.bordered)
        }
    }
    
