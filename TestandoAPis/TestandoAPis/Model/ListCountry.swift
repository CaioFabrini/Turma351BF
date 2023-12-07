//
//  ListCountry.swift
//  TestandoAPis
//
//  Created by Caio Fabrini on 07/12/23.
//

import Foundation

// MARK: - ListCountry
struct Country: Codable {
    var data: [CountryDetail]?
}

// MARK: - Datum
struct CountryDetail: Codable {
    var address, phone: String?
}
