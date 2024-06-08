//
//  City+Country.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import Foundation

// An instance of this structure stores one city
struct CityCountry: Identifiable, Codable {
    
    var id: Int?
    let name: String
    let country: Country

    struct Country: Identifiable, Codable {
        let id: Int
        let name: String
    }
}
