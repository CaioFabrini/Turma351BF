//
//  HistoryViewModel.swift
//  HistoryTurma351BF
//
//  Created by Caio Fabrini on 09/11/23.
//

import Foundation

protocol HistoryViewModelProtocol: AnyObject {
    func successRequest()
    func errorRequest()
}

class HistoryViewModel {
    
    private var service = HistoryService()
    private var history: History?
    weak var delegate: HistoryViewModelProtocol?
    
    func fetchHistoryAlamofire() {
        service.getHistoryAlamofire { result in
            switch result {
            case .success(let success):
                self.history = success
                self.delegate?.successRequest()
            case .failure(_):
                self.delegate?.errorRequest()
            }
        }
    }
    
    func fetchHistoryURLSession() {
        service.getHistoryURLSession { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let success):
                    self.history = success
                    self.delegate?.successRequest()
                case .failure(_):
                    self.delegate?.errorRequest()
                }
            }
        }
    }
    
    func fetchHistoryMock() {
        service.getHistoryMock { result in
            switch result {
            case .success(let success):
                self.history = success
                self.delegate?.successRequest()
            case .failure(_):
                self.delegate?.errorRequest()
            }
        }
    }
    
    func numberOfRows() -> Int {
        return history?.historyAccountList.count ?? 0
    }
    
    func getHistoryAccountList(indexPath: IndexPath) -> HistoryAccountList {
        return history?.historyAccountList[indexPath.row] ?? HistoryAccountList(name: "", price: 0, iconImage: "")
    }
    
}
