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

// Navegação

// Modal

// É utilizado para apenas exibir informações, mostrar algo para o usuario.
// Utilizamos o present para fazer a navegacao com modal (para exibir a tela)
// Utilizamos o dismiss para desaparecer com a tela


// NavigationController

// É utilizado para obter o controle de navegação de fluxos de uma tela ou varias telas
// Para ter uma navigation, precisamos ter uma tela ROOT
// A tela root(raiz) ela é a primeira da pilha, sendo representada com uma tela ao lado indicando que ela é uma NavigationController
// Para chamar uma outra tela utilizamos o navigationController?.pushViewController(viewController, animated: true)
// Para voltar utilizamos o navigationController?.popViewController(animated: true)
// Para voltar para a tela raiz(root) utilizamos o navigationController?.popToRootViewController(animated: true)

class Tela01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     title = "Meu nome é Caio"
    }

    @IBAction func tappedShowScreen02(_ sender: UIButton) {
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        
        // Modal
//        tela02?.modalPresentationStyle = .fullScreen
//        present(tela02 ?? UIViewController(), animated: true)
        
        // Navigation
        navigationController?.pushViewController(tela02 ?? UIViewController(), animated: true)
    }
    
}

