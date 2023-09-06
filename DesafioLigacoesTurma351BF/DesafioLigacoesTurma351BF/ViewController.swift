//
//  ViewController.swift
//  DesafioLigacoesTurma351BF
//
//  Created by Caio Fabrini on 05/09/23.
//

import UIKit


// Ligações IBOutlet sempre antes do live Cycle
// Ligações IBAction sempre depois do live Cycle

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameButton: UIButton!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    func configElements() {
        nameTextField.placeholder = "Digite seu nome"
        lastNameTextField.placeholder = "Digite seu sobrenome"
        
        fullNameButton.setTitle("Nome completo", for: .normal)
    }

    @IBAction func tappedFullNameButton(_ sender: UIButton) {
        let name = nameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        if !name.isEmpty && !lastName.isEmpty {
            fullNameLabel.text = "\(name) \(lastName)"
        } else {
            fullNameLabel.text = "Informe todos os campos"
        }
    }
    
}

