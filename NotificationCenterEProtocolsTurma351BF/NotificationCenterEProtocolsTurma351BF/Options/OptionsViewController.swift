//
//  OptionsViewController.swift
//  NotificationCenterEProtocolsTurma351BF
//
//  Created by Caio Fabrini on 10/10/23.
//

import UIKit

// Como criar um protocol?
// Utilize a palavra reservada protocol
// Na sequencia o nome do protocol
// Crie o protocol do lado DE FORA da classe
// Coloque o protocol para ser do tipo AnyObject
// Crie as propriedades/metodos no protocol
// Dentro da classe crie um delegate e coloque ele SEMPRE COM WEAK


// Para trabalhar com protocol e não ter dor de cabeça

// Crie o protocol
// ASSINAR O PROTOCOL Ex: viewController?.delegate = self (SE CASO NÃO ASSINAR, JAMAIS IRÁ FUNCIONAR)
// Utilize o protocol Ex: delegate?.tappedButton()

// Problemas com Protocol

// Se caso o delegate vier como nil -> significa que o protocol NÃO FOI ASSINADO!!!!!
// SEMPRE UTILIZE BREAK POINT PARA VALIDAR TODO FLUXO!
// Comece utilizando break point no momento em que é feito a assinatura e na sequencia coloque o break point quando é realizado o disparo,
// para garantir que tudo está funcionando corretamente.



// O nome é o nome da classe + o final "Protocol"
protocol OptionsViewControllerProtocol: AnyObject {
    func actionMacbook()
    func actionImac()
}

class OptionsViewController: UIViewController {
    
    @IBOutlet weak var macbookButton: UIButton!
    @IBOutlet weak var imacButton: UIButton!
    
    weak var delegate: OptionsViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tappedMacbookButton(_ sender: Any) {
        // Neste exemplo alem de gritar a nossa chave "macbook", tambem estamos levando o object UIColor (você pode setar qualquer tipagem no object)
        //        NotificationCenter.default.post(name: NSNotification.Name("macbook"), object: UIColor.cyan)
        
        // Para utilizar notification, descomente a linha abaixo e comente a linha do delegate. Mesma coisa para o inverso
        // NotificationCenter.default.post(name: .macbook, object: nil)
        
        // Protocol
        delegate?.actionMacbook()
        dismiss(animated: true)
    }
    
    @IBAction func tappedImacButton(_ sender: UIButton) {
        // Para utilizar notification, descomente a linha abaixo e comente a linha do delegate. Mesma coisa para o inverso
        // NotificationCenter.default.post(name: .imac, object: nil)
        
        // Protocol
        delegate?.actionImac()
        dismiss(animated: true)
    }
    
}
