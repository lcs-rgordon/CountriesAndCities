//
//  Country+City.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import Foundation

// An instance of this structure stores one country
struct CountryCity: Identifiable, Codable {
    
    // MARK: Stored properties
    let id: Int
    let name: String
    let cities: [City]  // Holds all the cities for this country
    
    // Help Swift decode information sent from Supabase
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case cities = "city"  // Load information sent in "city" key into the "cities" array
    }
    
    // Embedding the City structure inside the CountryCity structure
    // mimics the one-to-many relationship between a country and it's cities
    struct City: Identifiable, Codable {
        let id: Int
        let name: String
    }
    
}
