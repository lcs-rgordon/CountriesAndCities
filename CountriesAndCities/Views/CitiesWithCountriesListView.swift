//
//  CitiesWithCountriesListView.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import SwiftUI

struct CitiesWithCountriesListView: View {
    var body: some View {
        NavigationStack {
            List {
                VStack(alignment: .leading) {
                    Text("Beijing")
                        .bold()
                    Text("China")
                        .font(.subheadline)
                }
                VStack(alignment: .leading) {
                    Text("Berlin")
                        .bold()
                    Text("Germany")
                        .font(.subheadline)
                }
                VStack(alignment: .leading) {
                    Text("Boston")
                        .bold()
                    Text("United States")
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
