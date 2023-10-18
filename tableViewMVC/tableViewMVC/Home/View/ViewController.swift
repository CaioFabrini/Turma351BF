//
//  ViewController.swift
//  tableViewMVC
//
//  Created by Gabriel Mors  on 17/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dataList: [Person] = [Person(name: "Gabriel", lastName: "Mors"),
                              Person(name: "Felipe", lastName: "Miranda"),
                              Person(name: "Caio", lastName: "Fabrini"),
                              Person(name: "Barbara", lastName: "Brigolin")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonCollectionViewCell.identifier, for: indexPath) as? PersonCollectionViewCell
        cell?.setupCell(data: dataList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    
}
