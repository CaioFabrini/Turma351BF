//
//  IdCardTableViewCell.swift
//  HospitalMVVM
//
//  Created by Caio Fabrini on 26/10/23.
//

import UIKit

class IdCardTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var idNumberLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    static let identifier: String = String(describing: IdCardTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        configElements()
    }
    
    func configElements() {
        backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
        subView.backgroundColor = .white
        
        titleLabel.text = "Consulte as solicitações relacionadas ao seu plano."
        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        titleLabel.textColor = UIColor(red: 8/255, green: 29/255, blue: 96/255, alpha: 1.0)
        titleLabel.textAlignment = .left
        titleLabel.numberOfLines = 0
        
        nameLabel.text = "CAIO LUCHETA FABRINI"
        nameLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        nameLabel.textColor = UIColor(red: 8/255, green: 29/255, blue: 96/255, alpha: 1.0)
        
        idNumberLabel.text = "Carteirinha: 32843438578545"
        idNumberLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        idNumberLabel.textColor = .lightGray
        
        personImageView.image = UIImage(systemName: "person.circle.fill")
        personImageView.tintColor = UIColor(red: 8/255, green: 29/255, blue: 96/255, alpha: 1.0)
        
        iconImageView.image = UIImage(systemName: "chevron.forward")
        iconImageView.tintColor = .orange
    }
    
}
