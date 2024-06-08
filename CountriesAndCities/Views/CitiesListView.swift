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
    
    @State private var isNewCitySheetShowing = false
    
    // MARK: Computed properties
    var body: some View {
        List(country.cities) { city in
            Text(city.name)
        }
        .sheet(isPresented: $isNewCitySheetShowing) {
            AddCityView(
                isShowing: $isNewCitySheetShowing,
                currentCountry: country
            )
            .presentationDetents([.fraction(0.2)])
        }
        .toolbar {
            ToolbarItem {
                Button {
                    isNewCitySheetShowing = true
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
        .navigationTitle(country.name)
    }
}
