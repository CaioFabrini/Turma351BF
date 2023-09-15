//
//  Tela02ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Caio Fabrini on 14/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        // Modal
//        dismiss(animated: true)
        
        // Navigation
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tappedShowScreen03Button(_ sender: UIButton) {
        let tela03 = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        navigationController?.pushViewController(tela03 ?? UIViewController(), animated: true)
    }
}
