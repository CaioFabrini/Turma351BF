//
//  ViewController.swift
//  tableViewComCollectionView
//
//  Created by Gabriel Mors  on 28/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var vehicleList: [Vehicle] = [
                                     Vehicle(title: "Carro", list: ["car1","car2","car3","car4","car5","car6"]),
                                     Vehicle(title: "Motocicleta", list: ["motorcycle1","motorcycle2"]),
                                     Vehicle(title: "Avião", list: ["plane1","plane2","plane3"]),
                                     Vehicle(title: "Barco", list: ["boat1"]),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(VehicleTableViewCell.nib(), forCellReuseIdentifier: VehicleTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: VehicleTableViewCell.identifier, for: indexPath) as? VehicleTableViewCell else {
            return UITableViewCell()
        }
        cell.setupCell(data: vehicleList[indexPath.row])
        return cell
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: VehicleTableViewCell.identifier, for: indexPath) as? VehicleTableViewCell
//        cell?.setupCell(data: vehicleList[indexPath.row])
//        return cell ?? UITableViewCell()
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 360
    }
}
