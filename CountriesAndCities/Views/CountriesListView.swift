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
            List(viewModel.countries) { country in
                Text(country.name)
            }
            .navigationTitle("Countries")
        }
    }
}

#Preview {
    CountriesListView()
}
