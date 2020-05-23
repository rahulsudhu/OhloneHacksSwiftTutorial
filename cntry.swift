//
//  cntry.swift
//  OhloneHacksApp
//
//  Created by Rahul Sudharsan on 5/20/20.
//  Copyright © 2020 Rahul Sudharsan. All rights reserved.
//

import SwiftUI

struct Cntry : Identifiable {
    var id = UUID()
    var name: String
    var totalCases: Int
    var deceased: Int
    var recovered: Int
    
}

struct Country: Codable {
    var name: String
    var totalCases: Int
    var deceased: Int
    var recovered: Int
}



let testData = [
    Cntry(name: "Global", totalCases: 1581903, deceased: 300000, recovered: 20000000),
    Cntry(name: "USA", totalCases: 1581903, deceased: 300000, recovered: 20000000),
    Cntry(name: "China", totalCases: 1581903, deceased: 300000, recovered: 20000000),
    Cntry(name: "Canada", totalCases: 1581903, deceased: 300000, recovered: 20000000),
    Cntry(name: "Mexico", totalCases: 1581903, deceased: 300000, recovered: 20000000),
]
