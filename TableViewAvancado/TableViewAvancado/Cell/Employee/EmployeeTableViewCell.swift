//
//  EmployeeTableViewCell.swift
//  TableViewAvancado
//
//  Created by Gabriel Mors  on 28/09/23.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    
    @IBOutlet weak var heartButton: UIButton!
    
    
    static var identifier: String = String(describing: EmployeeTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(data: Employee) {
        userImageView.image = data.image
        nameLabel.text = "Nome: \(data.name)"
        ageLabel.text = "Idade: \(data.age)"
        jobLabel.text = "Profissão: \(data.job)"
        salaryLabel.text = "Salário: \(data.salary)"
        
        if data.isEnableHeart {
            heartButton.tintColor = .red
        } else {
            heartButton.tintColor = .blue
        }
    }
}
