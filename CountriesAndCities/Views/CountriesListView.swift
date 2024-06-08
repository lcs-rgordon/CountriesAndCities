//
//  CountriesListView.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import SwiftUI

struct CountriesListView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Canada")
                Text("Mexico")
            }
            .navigationTitle("Countries")
        }
    }
}

#Preview {
    CountriesListView()
}
