//
//  ViewController.swift
//  TransicaoDeDados
//
//  Created by Gabriel Mors  on 19/09/23.
//

import UIKit

class Tela01ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let tela02 = UIStoryboard(name: String(describing: Tela02ViewController.self), bundle: nil).instantiateViewController(identifier: "Tela02ViewController") { coder -> Tela02ViewController? in
            return Tela02ViewController(coder: coder, name: self.nameTextField.text ?? "")
        }
        
        navigationController?.pushViewController(tela02, animated: true)
    }
    
    // Coder é uma referencia da instancia.
    // É uma ferramenta que o sistema usa para criar uma classe a partir do arquivo Storyboard
}

