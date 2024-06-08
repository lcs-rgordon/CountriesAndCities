//
//  CountriesListViewModel.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import Foundation

@Observable
class CountriesListViewModel: Observable {
    
    // MARK: Stored properties
    var countries: [Country] = []
    
    // MARK: Intializer(s)
    init() {
        // Get countries from the database
        Task {
            try await getCountries()
        }
    }
    
    // MARK: Function(s)
    func getCountries() async throws {
                
        do {
            let results: [Country] = try await supabase
                .from("country")
                .select()
                .execute()
                .value
            
            self.countries = results
                        
        } catch {
            debugPrint(error)
        }
        
    }
    
}
