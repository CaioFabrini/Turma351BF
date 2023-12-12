//
//  ListCountry.swift
//  TestandoAPis
//
//  Created by Caio Fabrini on 07/12/23.
//

import Foundation

// MARK: - ListCountry
struct EmbassyAbroad: Codable {
    var data: [EmbassyAbroadDetail]?
}

// MARK: - Datum
struct EmbassyAbroadDetail: Codable {
    var address, phone: String?
}
