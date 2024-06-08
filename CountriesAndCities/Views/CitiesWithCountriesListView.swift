//
//  CitiesWithCountriesListView.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import SwiftUI

struct CitiesWithCountriesListView: View {
    
    // MARK: Stored proeprties
    @State private var viewModel = CitiesWithCountriesListViewModel()
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            List(viewModel.cities) { city in
                VStack(alignment: .leading) {
                    Text(city.name)
                        .bold()
                    Text(city.country.name)
                        .font(.subheadline)
                }
            }
            .navigationTitle("Cities")
        }
    }
}

#Preview {
    CitiesWithCountriesListView()
}
