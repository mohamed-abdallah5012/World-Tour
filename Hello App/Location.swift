//
//  Location.swift
//  Hello App
//
//  Created by Mohamed Abdallah on 1/1/21.
//

import Foundation
struct Location : Decodable , Identifiable{
    
    let id:Int
    let name:String
    let country:String
    let description :String
    let more :String
    let latitude: Double
    let longitude:Double
    let heroPicture:String
    let advisory:String
    
    static let example = Location(id: 1, name: "T", country: "om", description: "hlands.", more: "The a Chad and Russia. ", latitude: 57.1200, longitude: -4.7100, heroPicture: "highlands", advisory: "bWe accept no liability for any visitors eaten alive by midges.")
    
    
}
