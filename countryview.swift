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
            Text(country.name).font(.largeTitle).fontWeight(.heavy).padding(.bottom, 100)
            Text("\(country.totalCases)").fontWeight(.bold).foregroundColor(.blue).font(.title)
            Text("Total Cases")
            Text("\(country.deceased)").fontWeight(.bold).foregroundColor(.red).padding(.top, 25).font(.title)
            Text("Total Deceased")
            Text("\(country.recovered)").fontWeight(.bold).foregroundColor(.green).padding(.top, 25).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Total Recovered")
        }
    }
}

struct countryview_Previews: PreviewProvider {
    static var previews: some View {
        countryview(country: testData[0])
    }
}
