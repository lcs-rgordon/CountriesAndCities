//
//  AddCityView.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import SwiftUI

struct AddCityView: View {
    
    // MARK: Stored properties
    
    // Is this view showing in a sheet?
    @Binding var isShowing: Bool
    
    // Which country is this new city in?
    let currentCountry: CountryCity
    
    // Access to view model to be able to add a city
    @Environment(CountriesListViewModel.self) var viewModel
    
    // Stores the city name
    @State private var newCity: String = ""
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("City", text: $newCity)
                }
            }
            .navigationTitle("New City")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        // Add the city
                        viewModel.add(city: newCity, in: currentCountry)
                        // Close this sheet
                        isShowing = false
                    } label: {
                        Text("Add")
                    }

                }
            }
        }
    }
}
