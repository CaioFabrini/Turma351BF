//
//  Tela02ViewController.swift
//  TransicaoDeDados
//
//  Created by Gabriel Mors  on 19/09/23.
//


//    navigationController -> PopViewController
//    Modal -> Dismiss

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String = ""
    
    init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }
    
    
}
