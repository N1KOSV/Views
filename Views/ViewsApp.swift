//
//  ViewsApp.swift
//  Views
//
//  Created by Νίκος Βιντζηλαίος on 15/09/2023.
//

import SwiftUI

@main
struct ViewsApp: App {
    
    
    @StateObject private var vm = LocationsViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
