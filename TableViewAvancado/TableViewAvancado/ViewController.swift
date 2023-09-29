//
//  ViewController.swift
//  TableViewAvancado
//
//  Created by Gabriel Mors  on 28/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var employeeList: [Employee] = [Employee(name: "Gabriel Mors", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "1.000,00", isEnableHeart: true),
                                    Employee(name: "Luana", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                    Employee(name: "Felipe", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                    Employee(name: "Robert", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                    Employee(name: "Anderson", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UserTableViewCell.nib(), forCellReuseIdentifier: UserTableViewCell.identifier)
        tableView.register(EmployeeTableViewCell.nib(), forCellReuseIdentifier: EmployeeTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 + employeeList.endIndex
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell
            cell?.setupCell(data: User(name: "Gabriel Mors", image: UIImage(systemName: "star") ?? UIImage()))
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: EmployeeTableViewCell.identifier, for: indexPath) as? EmployeeTableViewCell
            cell?.setupCell(data: employeeList[indexPath.row - 1])
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Verifica se a célula a ser removida é um funcionário
            if indexPath.row >= 1 {
                // Ajusta o índice para a matriz de funcionários
                let adjustedIndex = indexPath.row - 1
                employeeList.remove(at: adjustedIndex)
                tableView.reloadData()
            }
        }
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 150
        } else {
            return 250
        }
    }
}
