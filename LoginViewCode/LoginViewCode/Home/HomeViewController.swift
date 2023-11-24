//
//  HomeViewController.swift
//  LoginViewCode
//
//  Created by Gabriel Mors  on 21/11/23.
//

import UIKit

class HomeViewController: UIViewController {

    var screen: HomeScreen?
    
    var personList: [Person] = [Person(name: "Gabriel", lastName: "Mors"),
                                Person(name: "Caio", lastName: "Fabrini"),
                                Person(name: "Barbara", lastName: "Brigolin"),
                                Person(name: "Gabriel", lastName: "Mors"),
                                Person(name: "Caio", lastName: "Fabrini"),
                                Person(name: "Barbara", lastName: "Brigolin"),
                                Person(name: "Gabriel", lastName: "Mors"),
                                Person(name: "Caio", lastName: "Fabrini"),
                                Person(name: "Barbara", lastName: "Brigolin"),
    ]
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        screen?.configTableViewDelegate(delegate: self, dataSource: self)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
        cell?.setupCell(data: personList[indexPath.row])
        cell?.selectionStyle = .none
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
