//
//  countryview.swift
//  OhloneHacksApp
//
//  Created by Rahul Sudharsan on 5/10/20.
//  Copyright © 2020 Rahul Sudharsan. All rights reserved.
//

import SwiftUI

struct countryview: View {
    let country: Cntry
    var body: some View {
        VStack {
            Text(country.name).font(.largeTitle).padding(100)
            Text("\(country.totalCases)").foregroundColor(.blue)
            Text("Total Cases")
            Text("\(country.deceased)").foregroundColor(.red)
            Text("Total Deceased")
            Text("\(country.recovered)").foregroundColor(.green)
            Text("Total Recovered")
        }
    }
}

struct countryview_Previews: PreviewProvider {
    static var previews: some View {
        countryview(country: testData[0])
    }
}
