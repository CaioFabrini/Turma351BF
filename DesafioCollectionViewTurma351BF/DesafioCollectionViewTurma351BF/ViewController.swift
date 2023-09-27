//
//  ViewController.swift
//  DesafioCollectionViewTurma351BF
//
//  Created by Caio Fabrini on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var list: [Car] = [Car(name: "Ferrari", image: "car1"), Car(name: "BMW", image: "car2"), Car(name: "Audi", image: "car3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = .zero
        collectionView.setCollectionViewLayout(layout, animated: false)
        collectionView.register(CarCollectionViewCell.nib(), forCellWithReuseIdentifier: CarCollectionViewCell.identifier)
    }


}

extension ViewController: UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarCollectionViewCell.identifier, for: indexPath) as? CarCollectionViewCell
        cell?.setupCell(car: list[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}

