//
//  Tela04ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Caio Fabrini on 14/09/23.
//

import UIKit

class Tela04ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappedRootButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
