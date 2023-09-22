//
//  NameTableViewCell.swift
//  TableViewSimplesTurma351BF
//
//  Created by Caio Fabrini on 21/09/23.
//

import UIKit

// Criar identifier com o mesmo nome da classe
// Criar layout para celula
// Criar ligações
// Configurar elementos
// Criar metodo de setup - NÃO SE ESQUEÇA DE CRIAR O METODO DE SETUP!!!
// Registrar a celula na VIEWCONTROLLER


class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    // Esse é um metodo de ciclo de vida da celula como se fosse o viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
        nameLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }
    
    func setupCell(name: String) {
        nameLabel.text = name
    }
    
}
