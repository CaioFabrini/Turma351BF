//
//  HistoryService.swift
//  HistoryTurma351BF
//
//  Created by Caio Fabrini on 09/11/23.
//

import Foundation
import Alamofire

class HistoryService {
    
    func getHistoryAlamofire(completion: @escaping (Result<History, Error>) -> Void) {
        let urlString = "https://run.mocky.io/v3/acdbc4b9-d952-4887-98d4-2be52ee6dd5f"
        AF.request(urlString, method: .get).responseDecodable(of: History.self) { response in
            switch response.result {
            case .success(let history):
                completion(.success(history))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    // utilizamos o @escaping para que a nossa função continue viva ATÉ obtenha o retorna do completion
    func getHistoryURLSession(completion: @escaping (Result<History, Error>) -> Void) {
        guard let url = URL(string: "https://run.mocky.io/v3/acdbc4b9-d952-4887-98d4-2be52ee6dd5f") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let dataResult = data else { return }
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                do {
                    let history: History = try JSONDecoder().decode(History.self, from: dataResult)
                    completion(.success(history))
                } catch {
                    completion(.failure(error))
                }
            } else {
                completion(.failure(error ?? NSError(domain: "Deu ruim em", code: response.statusCode)))
            }
        }
        task.resume()
    }
    
    func getHistoryMock(completion: (Result<History, Error>) -> Void) {
        if let url = Bundle.main.url(forResource: "History", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let history: History = try JSONDecoder().decode(History.self, from: data)
                completion(.success(history))
            } catch {
                completion(.failure(error))
            }
        }
    }
    
}
