//
//  LocationsListView.swift
//  Views
//
//  Created by Νίκος Βιντζηλαίος on 15/09/2023.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    ListRowsView(location: location)
                }
                .padding(.vertical, 4)
                .listRowBackground(Color.clear)
            }
                    
                }
        .listStyle(.plain)
            }
        }
    

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsListView {
    
    private func ListRowsView(location: Location) -> some View {
        HStack {
            if let imageName = location.ImageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            VStack(alignment: .leading){
                Text(location.Name)
                    .font(.headline)
                Text(location.CityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

        }
    }
}
