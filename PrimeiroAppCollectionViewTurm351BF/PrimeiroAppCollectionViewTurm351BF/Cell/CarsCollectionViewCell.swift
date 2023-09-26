//
//  CarsCollectionViewCell.swift
//  PrimeiroAppCollectionViewTurm351BF
//
//  Created by Caio Fabrini on 26/09/23.
//

import UIKit

class CarsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CarsCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    // ciclo de vida da collectionViewCell (como se fosse o viewDidLoad da viewController)
    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleToFill
    }
    
    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }
    
    
}
