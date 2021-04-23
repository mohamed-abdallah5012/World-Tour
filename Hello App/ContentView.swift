//
//  ContentView.swift
//  Hello App
//
//  Created by Mohamed Abdallah on 1/1/21.
//

import SwiftUI

struct ContentView: View {
    
    let oneLocation:Location
    
    var body: some View {
        
        ScrollView{
            Image(oneLocation.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(oneLocation.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            Text(oneLocation.country)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.secondary)
            
            Text(oneLocation.description)
                .padding(.horizontal)
                        
            Text("Did you Know ?")
                .bold()
                .padding(.top)
            
            Text(oneLocation.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(oneLocation:Location.example)
        }
        
    }
}
