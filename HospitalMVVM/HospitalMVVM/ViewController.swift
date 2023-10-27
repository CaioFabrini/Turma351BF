//
//  ViewController.swift
//  HospitalMVVM
//
//  Created by Caio Fabrini on 24/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Autorização de Procedimento"
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
        tableView.register(AuthorizationProcessTableViewCell.nib(), forCellReuseIdentifier: AuthorizationProcessTableViewCell.identifier)
        tableView.register(IdCardTableViewCell.nib(), forCellReuseIdentifier: IdCardTableViewCell.identifier)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: AuthorizationProcessTableViewCell.identifier, for: indexPath) as? AuthorizationProcessTableViewCell
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: IdCardTableViewCell.identifier, for: indexPath) as? IdCardTableViewCell
            return cell ?? UITableViewCell()
        }
    }
    
}


