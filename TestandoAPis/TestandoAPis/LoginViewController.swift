//
//  ViewController.swift
//  TestandoAPis
//
//  Created by Caio Fabrini on 07/12/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var viewModel: LoginViewModel = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel.fetchEmbassyAbroad()
//        viewModel.fetchCountryActivities()
        viewModel.fetchCountryDetail(country: "brazil")
//          viewModel.fetchCountryBrief()
    }


}

