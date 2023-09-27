//
//  CarCollectionViewCell.swift
//  DesafioCollectionViewTurma351BF
//
//  Created by Caio Fabrini on 26/09/23.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = String(describing: CarCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
        nameLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        carImageView.contentMode = .scaleToFill
    }
    
    func setupCell(car: Car) {
        carImageView.image = UIImage(named: car.image)
        nameLabel.text = car.name
    }
    

}
