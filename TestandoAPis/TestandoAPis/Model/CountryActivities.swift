//
//  CountryActivities.swift
//  TestandoAPis
//
//  Created by Caio Fabrini on 07/12/23.
//

import Foundation

// MARK: - ListCountry
struct CountryActivities: Codable {
    var data: ActivityData?
}

// MARK: - DataClass
struct ActivityData: Codable {
    var activities: [Activity]?
}

// MARK: - Activity
struct Activity: Codable {
    var title, activity: String?
}

