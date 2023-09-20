//
//  Tela02ViewController.swift
//  LifeCycle
//
//  Created by Gabriel Mors  on 19/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    // Método quando a tela esta preste a ser apresentado
    // Antes da view aparecer, esse método é chamado
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    // Método quando a tela é RENDERIZADA (Ou seja será disparado apenas 1 vez!!!)
    // Antes de view ser exibida esse metodo é chamado automaticamente
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }

    // Método quando a tela esta apresentado por completo
    // APARECEU PARA O USUÁRIO
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }

    //Método quando a tela esta preste a sair (Ou seja, antes da tela sair, esse método é chamado)
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    // Método quando a tela desapareceu por completo!!
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    
}
