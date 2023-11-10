//
//  HistoryViewModel.swift
//  HistoryTurma351BF
//
//  Created by Caio Fabrini on 09/11/23.
//

import Foundation

class HistoryViewModel {
    
    private var service = HistoryService()
    
    func fetchHistory() {
        service.getHistoryMock { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    
    
}
