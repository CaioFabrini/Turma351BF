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
    
    private var service: LoginService = LoginService()
    
    func featchCountryDetail() {
        service.getListCountryURLSession { result in
            switch result {
            case .success(let success):
                print(success)
                self.listEmbassyAbroadDetail = success.data ?? []
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func featchCountryActivities() {
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
    
    

}
