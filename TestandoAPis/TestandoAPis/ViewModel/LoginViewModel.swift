//
//  LoginViewModel.swift
//  TestandoAPis
//
//  Created by Caio Fabrini on 07/12/23.
//

import UIKit

class LoginViewModel {
    
    var listCountryDetail: [CountryDetail] = []
    
    private var service: LoginService = LoginService()
    
    func featchCountryDetail() {
        service.getListCountryURLSession { result in
            switch result {
            case .success(let success):
                print(success)
                self.listCountryDetail = success.data ?? []
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }

}
