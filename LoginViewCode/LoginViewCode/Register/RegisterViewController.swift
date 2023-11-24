//
//  RegisterViewController.swift
//  LoginViewCode
//
//  Created by Gabriel Mors  on 23/11/23.
//

import UIKit

class RegisterViewController: UIViewController {

    var screen: RegisterScreen?
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        screen?.delegate = self
    }
}

extension RegisterViewController: RegisterScreenProtocol {
    func tappedRegisterButton() {
        navigationController?.pushViewController(HomeViewController(), animated: true)
    }
}
