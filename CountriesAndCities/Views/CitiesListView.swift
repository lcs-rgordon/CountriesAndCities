//
//  CitiesListView.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import SwiftUI

struct CitiesListView: View {
    
    // MARK: Stored properties
    let country: CountryCity
    
    // MARK: Computed properties
    var body: some View {
        List(country.cities) { city in
            Text(city.name)
        }
        .navigationTitle(country.name)
    }
}
