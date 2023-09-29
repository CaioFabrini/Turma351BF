//
//  UserTableViewCell.swift
//  TableViewAvancado
//
//  Created by Gabriel Mors  on 28/09/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = String(describing: UserTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(data: User) {
        nameLabel.text = data.name
        userImage.image = data.image
    }
}
