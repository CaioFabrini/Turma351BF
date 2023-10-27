//
//  ProcedureAuthorization.swift
//  HospitalMVVM
//
//  Created by Caio Fabrini on 26/10/23.
//

import Foundation

struct ProcedureAuthorization {
    var banner: Banner
    var idCard: IdCard
}

struct Banner {
    var title: String
    var description: String
}

struct IdCard {
    var name: String
    var id: String
}
