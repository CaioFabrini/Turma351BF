//
//  VehicleCollectionViewCell.swift
//  tableViewComCollectionView
//
//  Created by Gabriel Mors  on 28/09/23.
//

import UIKit

class VehicleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var CarImageView: UIImageView!
    
    static var identifier: String = String(describing: VehicleCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CarImageView.contentMode = .scaleAspectFill
    }
    
    func setupCell(nameImage: String) {
        CarImageView.image = UIImage(named: nameImage)
    }

}
