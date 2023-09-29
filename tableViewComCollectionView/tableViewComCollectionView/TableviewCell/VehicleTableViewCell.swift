//
//  VehicleTableViewCell.swift
//  tableViewComCollectionView
//
//  Created by Gabriel Mors  on 28/09/23.
//

import UIKit

class VehicleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static var identifier: String = String(describing: VehicleTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    var listCar: [String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCollection()
    }
    
    func configCollection() {
        collectionView.delegate = self
        collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        collectionView.register(VehicleCollectionViewCell.nib(), forCellWithReuseIdentifier: VehicleCollectionViewCell.identifier)
    }
    
    func setupCell(data: Vehicle) {
        self.titleLabel.text = data.title
        self.listCar = data.list
    }
}

extension VehicleTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VehicleCollectionViewCell.identifier, for: indexPath) as? VehicleCollectionViewCell
        cell?.setupCell(nameImage: listCar[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300)
    }
}
