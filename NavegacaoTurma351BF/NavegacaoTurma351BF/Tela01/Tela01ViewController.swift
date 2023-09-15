//
//  ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Caio Fabrini on 14/09/23.
//

import UIKit

// Regras para nome de classe:
// O nome da classe deve ser igual ao do file dela.
// O primeiro nome sempre deve começar pela primeira letra maiusucla
// O ultimo nome sempre deve ser do seu tipo Ex: HomeViewController

// Navegacao

// Modal
// É utilizado para apenas exibir informações, mostrar algo para o usuario.
// Utilizamos o present para fazer a navegacao com modal (para exibir a tela)
// Utilizamos o dismiss para desaparecer com a tela


// NavigationController

class Tela01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedShowScreen02(_ sender: UIButton) {
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        tela02?.modalPresentationStyle = .fullScreen
        present(tela02 ?? UIViewController(), animated: true)
    }
    
}

