//
//  PersonCollectionViewCell.swift
//  tableViewMVC
//
//  Created by Gabriel Mors  on 17/10/23.
//

import UIKit

class PersonCollectionViewCell: UITableViewCell {

    static var identifier: String = String(describing: PersonCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    public func setupCell(data: Person) {
        nameLabel.text = data.name
        lastNameLabel.text = data.lastName
    }
}
