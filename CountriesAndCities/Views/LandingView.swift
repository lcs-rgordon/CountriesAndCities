//
//  LandingView.swift
//  CountriesAndCities
//
//  Created by Russell Gordon on 2024-06-08.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView {
            
            CountriesListView()
                .tabItem {
                    Label(
                        "Countries",
                        systemImage: "globe.americas.fill"
                    )
                }

            CitiesWithCountriesListView()
                .tabItem {
                    Label(
                        "Cities",
                        systemImage: "building.2.crop.circle.fill"
                    )
                }

            
        }
    }
}

#Preview {
    LandingView()
}
