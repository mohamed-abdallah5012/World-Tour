//
//  Worldview.swift
//  Hello App
//
//  Created by Mohamed Abdallah on 1/1/21.
//
import MapKit
import SwiftUI

struct Worldview: View {
    
    
    
    @EnvironmentObject var location:Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    var body: some View {
        Map(coordinateRegion: $region,annotationItems: location.places){ location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude:location.latitude, longitude: location.longitude)){
                NavigationLink(
                    destination: ContentView(oneLocation: location)){
                    
                Image(location.country)
                    .resizable()
                    .cornerRadius(10)
                }
            }
        }
            .navigationTitle("Locations")
    }
}

struct Worldview_Previews: PreviewProvider {
    static var previews: some View {
        Worldview()
    }
}
