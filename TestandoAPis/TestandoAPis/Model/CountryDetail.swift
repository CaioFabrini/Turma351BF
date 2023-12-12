//
//  CountryDetail.swift
//  TestandoAPis
//
//  Created by Caio Fabrini on 07/12/23.
//

import Foundation

struct CountryDetail: Codable {
    var countryName, continent, officialLanguages, capital: String?
    var government, borderLength, population, surfaceAreaSqMi: String?
    var surfaceAreaKm2, populationDensitySqMi, populationDensityKm2: String?
    var neighborsList: [String]?
}
