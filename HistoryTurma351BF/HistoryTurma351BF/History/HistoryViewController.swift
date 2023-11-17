//
//  ViewController.swift
//  HistoryTurma351BF
//
//  Created by Caio Fabrini on 09/11/23.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: HistoryViewModel = HistoryViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Atenção, não troque as ordens!!!
        viewModel.delegate = self
        viewModel.fetchHistoryAlamofire()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(HistoryTableViewCell.nib(), forCellReuseIdentifier: HistoryTableViewCell.identifier)
    }


}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HistoryTableViewCell.identifier, for: indexPath) as? HistoryTableViewCell
        cell?.setupCell(data: viewModel.getHistoryAccountList(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
}


extension HistoryViewController: HistoryViewModelProtocol {
    func errorRequest() {
        // exibir alert
    }
    
    func successRequest() {
     configTableView()
    }
}


