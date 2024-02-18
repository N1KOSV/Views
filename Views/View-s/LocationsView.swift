//
//  LocationsView.swift
//  Views
//
//  Created by Νίκος Βιντζηλαίος on 15/09/2023.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    @EnvironmentObject private var vm: LocationsViewModel
    @State private var route: MKRoute?
    var body: some View {
        
        ZStack{
            mapLayer
                .ignoresSafeArea()
            VStack(){
                header
                userLocation
                    .position(x: 193, y: 30)
                    //.frame(width: 105)
                Spacer()
                    //.frame(height: 35)
            locationsPreviewStack
            }
        }
    }
}
    
    struct LocationsView_Previews: PreviewProvider {
        static var previews: some View {
            LocationsView()
                .environmentObject(LocationsViewModel())
        }
    }

extension LocationsView{
    
    private var header: some View{
        
        
        HStack {
                    VStack() {
                        Button(action: vm.toggleLocationsList) {
                        Text(vm.mapLocation.Name)
                            .font(.title2)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .animation(.linear, value:vm.mapLocation)
                            .background(Color.accentColor)
                            }
                        if vm.showLocationsList{LocationsListView()}
                    }
                    .background(.thickMaterial)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
                .padding()
                }
            }
    
    private var userLocation: some View{
                Button(action: centerOnUserLocation) {
                    Image(systemName: "location.fill")
                        .scaledToFit()
                        .font(.headline)
                        .frame(width: 70, height: 39)
                        .fontWeight(.black)
                        .shadow(color: Color.black.opacity(0.4) ,radius: 2, y: 3)
                        .foregroundColor(.primary)
                        .scaleEffect(CGSize(width: 1.5, height: 1.5))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)// Ensure the button takes the full width
    }

    
    private func centerOnUserLocation() {
        
            guard let locationManager = viewModel.locationManager,
                  let userLocation = locationManager.location else {
                return
            }
        
        
        let coordinate = userLocation.coordinate
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05) // You can adjust the span as needed
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        withAnimation(.easeInOut){
            vm.mapRegion = region}
    }
    
    private var mapLayer: some View {
        
        Map(coordinateRegion: $vm.mapRegion
            ,showsUserLocation: true, annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.Coordinates){
                LocationMapAnnotationView(location: location)
                    .shadow(radius: 10)
                    .scaleEffect(vm.mapLocation == location ? 1.4 : 1)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
        .onAppear {viewModel.checkIfLocatiOn()}
        .mapStyle(.standard(pointsOfInterest: .excludingAll))
        
    }
    
    private var locationsPreviewStack: some View{
        ZStack{
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: Color.black.opacity(0.4), radius: 10, y: 13)
                        .padding()
                        .transition(.opacity)
                }
            }
        }
    }
}







//Show the users location
final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    var locationManager: CLLocationManager?
    
    func checkIfLocatiOn() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        }
        else{print("error")}
        
    }
    
    private func checkLocationAuth(){
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus{
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted likely due to parental controls.")
        case .denied:
            print("You have denied this app location permission. Go into settings to change it.")
        case .authorizedAlways, .authorizedWhenInUse:
            break
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuth()
    }
    
}
