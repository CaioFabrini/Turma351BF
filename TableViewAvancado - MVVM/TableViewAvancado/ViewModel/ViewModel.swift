//
//  ViewModel.swift
//  TableViewAvancado
//
//  Created by Caio Fabrini on 22/11/23.
//

import UIKit

class ViewModel: NSObject {
    
    private(set) var employeeList: [Employee] = [Employee(name: "Gabriel Mors", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "1.000,00", isEnableHeart: true),
                                                 Employee(name: "Luana", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Felipe", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Robert", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Anderson", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Luana", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Felipe", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Robert", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Anderson", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Luana", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Felipe", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Robert", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
                                                 Employee(name: "Anderson", age: 18, job: "iOS Developer", image: UIImage(systemName: "person.circle") ?? UIImage(), salary: "15.000,00", isEnableHeart: true),
    ]
    
    var numberOfRows: Int {
        return employeeList.count + 1
    }
    
    func loadCurrentEmployeeList(indexPath: IndexPath) -> Employee {
        return employeeList[indexPath.row - 1]
    }
    
    func removeEmployeeList(indexPath: IndexPath) {
        employeeList.remove(at: indexPath.row - 1)
    }
    
    func changeEnableHeart(indexPath: IndexPath?) {
        // esse .toggle() ele simplesmente faz a troca do valor já existente. Por exemplo, se estava true ele torna false, e assim vice-versa.
        if let indexPath {
            employeeList[indexPath.row - 1].isEnableHeart.toggle()
        }
    }
    
    
}
