//
//  ViewController.swift
//  TableViewSimplesTurma351BF
//
//  Created by Caio Fabrini on 21/09/23.
//

import UIKit

// Receitinha TableView - NÃO TEM ERRO!!!!!

// Criar TableView
// Fazer ligação
// Assinar protocols Delegate e DataSource - SEMPRE !!!
// CHAMAR O METODO DE CONFIGURAÇÃO - NÃO ESQUECER!!!
// Criar extension para a classe contendo o UITableViewDelegate e o UITableViewDataSource
// Ajuste os metodos obrigatorios para não ficarem dando error enquanto você segue o desenvolvimento

/*
 extension ViewController: UITableViewDataSource {
 
 // Número de linhas por sessão
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 return 0
 }
 
 // Método responsavel por popular (dar vida) a celula(parte de visualização)
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 return UITableViewCell()
 }
 
 }
 */


// Criar tableViewCell e configura-la
// Registrar celula
// Popular celula
// Buildar o app




class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var list: [String] = ["Caio", "Felipe", "Gabriel", "Bárbara", "Lucas", "Fabim", "Luana", "Reinaldo", "Julio", "Eduardo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
    
}


extension ViewController: UITableViewDataSource {
    
    // Número de linhas por sessão
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    // Método responsavel por popular (dar vida) a celula (parte de visualização)
    // Este metodo disparar a quantidade de vezes informado no numberOfRowsInSection. Então se caso informei 10 vezes, o cellForRowAt será
    // disparado 10 vezes, pois ele precisar criar as 10 celulas.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(name: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
}
