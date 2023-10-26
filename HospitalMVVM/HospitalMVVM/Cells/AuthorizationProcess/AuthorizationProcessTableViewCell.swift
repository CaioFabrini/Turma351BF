//
//  AuthorizationProcessTableViewCell.swift
//  HospitalMVVM
//
//  Created by Caio Fabrini on 24/10/23.
//

import UIKit

class AuthorizationProcessTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var knowMoreLabel: UILabel!
    @IBOutlet weak var knowMoreImageView: UIImageView!
    
    static let identifier: String = String(describing: AuthorizationProcessTableViewCell.self)
    
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
        
        titleLabel.text = "Entenda melhor o processo de autorização"
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        titleLabel.textColor = UIColor(red: 8/255, green: 29/255, blue: 96/255, alpha: 1.0)
        titleLabel.textAlignment = .left
        titleLabel.numberOfLines = 0
        
        detailLabel.text = "Determinados procedimentos necessitam da validação prévia. Clique em saiba mais, para conhecer o processo de autorização"
        detailLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        detailLabel.textColor = .black
        detailLabel.textAlignment = .left
        detailLabel.numberOfLines = 0
        
        knowMoreLabel.text = "Saiba Mais"
        knowMoreLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        knowMoreLabel.textColor = UIColor(red: 8/255, green: 29/255, blue: 96/255, alpha: 1.0)
        knowMoreLabel.textAlignment = .left
        
        knowMoreImageView.image = UIImage(systemName: "arrow.right")
        knowMoreImageView.tintColor = UIColor(red: 8/255, green: 29/255, blue: 96/255, alpha: 1.0)
        
        iconImageView.image = UIImage(named: "icon")
        
    }
    
}
