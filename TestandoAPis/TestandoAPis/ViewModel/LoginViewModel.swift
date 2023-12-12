//
//  LoginViewModel.swift
//  TestandoAPis
//
//  Created by Caio Fabrini on 07/12/23.
//

import UIKit

class LoginViewModel {
    
    var listEmbassyAbroadDetail: [EmbassyAbroadDetail] = []
    var activities: [Activity] = []
    var countryDetail: CountryDetail?
    var countryBriefData: CountryBriefData?
    
    private var service: LoginService = LoginService()
    
    func fetchEmbassyAbroad() {
        service.getEmbassyAbroadURLSession { result in
            switch result {
            case .success(let success):
                print(success)
                self.listEmbassyAbroadDetail = success.data ?? []
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchCountryActivities() {
        service.getCountryActivitiesURLSession { result in
            switch result {
            case .success(let success):
                print(success)
                self.activities = success.data?.activities ?? []
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchCountryDetail(country: String) {
        service.getCountryDetailURLSession(country: country) { result in
            switch result {
            case .success(let success):
                print(success)
                self.countryDetail = success
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchCountryBrief() {
        service.getCountryBriefURLSession { result in
            switch result {
            case .success(let success):
                print(success.data ?? "deu ruim")
                self.countryBriefData = success.data
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    

}
