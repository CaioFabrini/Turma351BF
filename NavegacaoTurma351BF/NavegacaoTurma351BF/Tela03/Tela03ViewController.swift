//
//  Tela03ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Caio Fabrini on 14/09/23.
//

import UIKit

class Tela03ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedShowScreen04Button(_ sender: UIButton) {
        let tela04 = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
        navigationController?.pushViewController(tela04 ?? UIViewController(), animated: true)
    }
}
