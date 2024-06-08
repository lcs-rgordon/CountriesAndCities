//
//  CountriesListView.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import SwiftUI

struct CountriesListView: View {
    
    // MARK: Stored proeprties
    @State private var viewModel = CountriesListViewModel()
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            List(viewModel.countriesWithCities) { country in
                VStack(alignment: .leading) {
                    Text(country.name)
                        .bold()
                    Text("Total number of cities: \(country.cities.count)")
                }
            }
            .navigationTitle("Countries")
        }
    }
}

#Preview {
    CountriesListView()
}
