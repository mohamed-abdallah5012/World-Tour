//
//  Hello_AppApp.swift
//  Hello App
//
//  Created by Mohamed Abdallah on 1/1/21.
//

import SwiftUI

@main
struct Hello_AppApp: App {
    
    @StateObject var locations=Locations()
    var body: some Scene {
        WindowGroup {
            
            TabView{
            NavigationView{
                ContentView(oneLocation: locations.primary)
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
            NavigationView{
                Worldview()
            }
            .tabItem {
                Image(systemName: "star.fill")
                Text("Locations")
            }
                
            
            }
            .environmentObject(locations)
            
        }
    }
}
