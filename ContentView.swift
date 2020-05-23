//
//  ContentView.swift
//  OhloneHacksApp
//
//  Created by Rahul Sudharsan on 4/26/20.
//  Copyright © 2020 Rahul Sudharsan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var countryOptions: [Cntry] = testData

    
    var body: some View {
        VStack {
            Text("COVID-19 Tracker").font(.largeTitle).fontWeight(.bold)
            NavigationView {
                List(countryOptions) { country in
                    CountryCell(country: country)
                }
                .navigationBarTitle(Text("Countries")
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(countryOptions: testData)
    }
}

struct CountryCell: View {
    let country: Cntry
    var body: some View {
        NavigationLink(destination: countryview(country: country)) {
            if (country.name == "Global") {
                Image(systemName: "globe")
            } else {
            Image(systemName: "flag")
            }
            Text(country.name)
        }
    }
}
