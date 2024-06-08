//
//  CitiesWithCountriesListViewModel.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import Foundation

@Observable
class CitiesWithCountriesListViewModel: Observable {
    
    // MARK: Stored properties
    var cities: [CityCountry] = []
    
    // MARK: Intializer(s)
    init() {
        // Get cities from the database
        Task {
            try await getCities()
        }
    }
    
    // MARK: Function(s)
    func getCities() async throws {
        
        do {
            let results: [CityCountry] = try await supabase
                .from("city")
                .select("id, name, country(id, name)")  // Joins with the country table
                .execute()                              // Supabase automatically handles the join details
                .value
            
            self.cities = results
            
        } catch {
            debugPrint(error)
        }
        
    }
    
}
