//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Gabriel Mors  on 21/11/23.
//

import UIKit

class LoginViewController: UIViewController {

    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        screen?.delegate = self
    }
}

extension LoginViewController: LoginScreenProtocol {
    func tappedLoginButton() {
        navigationController?.pushViewController(HomeViewController(), animated: true)
    }
}
