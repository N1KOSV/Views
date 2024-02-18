//
//  LocationMapAnnotationView.swift
//  Views
//
//  Created by Νίκος Βιντζηλαίος on 16/02/2024.
//

import SwiftUI
import CoreLocation



struct LocationMapAnnotationView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    let accentColor = Color(red: 38/255.0, green: 71/255.0, blue: 141/255.0)
    let defaultColor = Color.yellow
    let cityToHighlight = "Πετρούπολη"
    
    var location: Location // assuming Location is a struct or class with a 'city' property
    
    var body: some View {
        if (location.CityName == cityToHighlight){
            VStack(spacing: 0) {
                Image(systemName: "moon.stars.circle.fill")
                    .symbolRenderingMode(.palette)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .font(.headline)
                    .padding(6)
                    .foregroundStyle(Color.yellow, accentColor)
                
                
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10, height: 10)
                    .offset(y: -7.8)
                    .padding(.bottom, 40)
                    .foregroundColor(accentColor)
            }
        }
            else { VStack(spacing: 0) {
                    Image(systemName: "moon.stars.circle.fill")
                        .symbolRenderingMode(.palette)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .font(.headline)
                        .padding(6)
                        .foregroundStyle(Color.green, accentColor)
                    
                   
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                            .offset(y: -7.8)
                            .padding(.bottom, 40)
                            .foregroundColor(accentColor)
            }
        }
    }
}
#if DEBUG
struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        let coordinate = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
        LocationMapAnnotationView(location: Location(Name: "String", CityName: "String", Coordinates: coordinate, Description: "String", ImageNames: ["String"], Link: "String"))
            .environmentObject(LocationsViewModel()) // provide a mock LocationsViewModel if necessary
    }
}
#endif
