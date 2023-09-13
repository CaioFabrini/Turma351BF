//
//  ViewController.swift
//  TextFieldTurma351BF
//
//  Created by Caio Fabrini on 12/09/23.
//

import UIKit

// Passo a passo para trabalhar com TextFieldDelegate

// Crie as ligacoes
// Assine o protocolo de TODOS os textFields -> o nome do textField + .delegate = self
// Ex: emailTextField.delegate = self
// Deixe sua classe em conformidade com o protocol
// Ex: class ViewController: UIViewController, UITextFieldDelegate OU extension ViewController: UITextFieldDelegate
// Utilize apenas os metodos necessarios
// Ex: textFieldDidBeginEditing, textFieldDidEndEditing, textFieldShouldReturn, shouldChangeCharactersIn, etc...

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("Botão login")
    }
    
    // Toda a vez que criar um textField não podemos esquecer de declarar o -> delegate = self
    // Isso para cada textField igual demonstra o exemplo
    
    func configElements() {
        emailTextField.placeholder = "Digite seu e-mail:"
        emailTextField.keyboardType = .emailAddress
        emailTextField.delegate = self
        
        passwordTextField.placeholder = "Digite sua senha:"
        passwordTextField.delegate = self
        
        // o isEnabled pode ser utilizado para qualquer elemento. Essa propriedade serve para habilitar/desabilitar interações com o usuario
        loginButton.isEnabled = false
    }
    
    // esté metodo é disparado sempre que clica no teclado
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        textField.layer.borderWidth = 1
        
      // exemplo com switch case
        
//        switch textField {
//        case emailTextField:
//            textField.layer.borderColor = UIColor.blue.cgColor
//        case passwordTextField:
//            textField.layer.borderColor = UIColor.purple.cgColor
//        default:
//            print("Não é nenhum deles")
//        }
        
        
      // exemplo else if
        
        if textField == emailTextField {
            textField.layer.borderColor = UIColor.blue.cgColor
        } else {
            textField.layer.borderColor = UIColor.purple.cgColor
        }
    }
    
    // esté metodo é disparado quando o teclado some
    // O DidEnd sempre é utilizado para realizar validações!!!
    // não recomendamos criar validações no shouldReturn!!!
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0
        
        if emailTextField.hasText && passwordTextField.hasText {
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }
        
        print("textFieldDidEndEditing")
    }
    
    // esté método sempre é disparado quando clicamos no botão "retorno"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn", textField.self)
        textField.resignFirstResponder()
        return true
    }
    
   // esté metodo é disparado assim que é feito qualquer alteração de texto no textField
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text as? NSString {
            let newText = text.replacingCharacters(in: range, with: string)
            print(newText)
        }
        return true
    }
    
    
}


// Quando queremos dar foco em um elemento utilizamos o becomeFirstResponder()
//ex:  passwordTextField.becomeFirstResponder()

// Quando quero remover o foco utilizamos o resignFirstResponder():
//textField.resignFirstResponder()
