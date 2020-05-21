//
//  ContentView.swift
//  OhloneHacksApp
//
//  Created by Rahul Sudharsan on 4/26/20.
//  Copyright © 2020 Rahul Sudharsan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var countryOptions: [Cntry] = []

    
    var body: some View {
        NavigationView {
            List(countryOptions) { country in
                CountryCell(country: country)
            }.onAppear(perform: loadData)
            .navigationBarTitle(Text("Covid-19 Tracker").font(.largeTitle))
        }
    
    }
    
    func loadData() {
        
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
            Image(systemName: "flag")
            Text(country.name)
        }
    }
}
