//
//  HistoryTableViewCell.swift
//  HistoryTurma351BF
//
//  Created by Caio Fabrini on 14/11/23.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    static let identifier: String = String(describing: HistoryTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    public func setupCell(data: HistoryAccountList) {
        nameLabel.text = data.name
        priceLabel.text = "R$ \(data.price)"
    }

}
