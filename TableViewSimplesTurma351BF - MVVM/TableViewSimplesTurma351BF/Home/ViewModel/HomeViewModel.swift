//
//  HomeViewModel.swift
//  TableViewSimplesTurma351BF
//
//  Created by Caio Fabrini on 19/10/23.
//

import UIKit

// No MVVM todo objeto deve permanecer na VIEW MODEL com PRIVATE
// Toda parte LOGICA deve permanecer na VIEW MODEL
// TUDO oque for solicitado tem que ser pela viewModel e caso não tenha aquela devida propriedade, solicite atraves de parametros
// EX:  func getPerson(indexPath: IndexPath) -> Person

class HomeViewModel {

    private var list: [Person] = [Person(name: "Caio", lastName: "Fabrini"),
                          Person(name: "Felipe", lastName: "Miranda"),
                          Person(name: "Lucas", lastName: "Munho")]
    
    
    func numberOfRows() -> Int {
        return list.count
    }
    
    func getPerson(indexPath: IndexPath) -> Person {
        return list[indexPath.row]
    }
    
    
}
