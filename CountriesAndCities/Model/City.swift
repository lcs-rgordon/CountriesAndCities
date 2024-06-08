//
//  City.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import Foundation

struct City: Identifiable, Codable {
    
    // MARK: Stored properties
    var id: Int?
    let name: String
    let countryId: Int
    
    // Help Swift encode information sent to Supabase
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case countryId = "country_id"  // Foreign key is named country_id in the database, not countryId
    }
}
