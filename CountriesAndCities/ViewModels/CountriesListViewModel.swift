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
    var countriesWithCities: [CountryCity] = []
    
    // MARK: Intializer(s)
    init() {
        // Get countries from the database
        Task {
            try await getCountries()
        }
        // Get countries with cities from the database
        Task {
            try await getCountriesWithCities()
        }
    }
    
    // MARK: Function(s)
    func getCountriesWithCities() async throws {
        
        do {
            let results: [CountryCity] = try await supabase
                .from("country")
                .select("id, name, city(id, name)")
                .execute()
                .value
            
            self.countriesWithCities = results
            
        } catch {
            debugPrint(error)
        }
        
    }
    
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
    
    func add(city: String, in country: CountryCity) {
            
            Task {
                // Make a new city instance
                let newCity = City(name: city, countryId: country.id)
                
                do {
                    // Add the new city
                    try await supabase
                        .from("city")
                        .insert(newCity)
                        .execute()
                    
                    // Refresh the list of countries with cities
                    try await self.getCountriesWithCities()
                    
                } catch {
                    
                    debugPrint(error)
                    
                }
            }
            
        }
    
}
