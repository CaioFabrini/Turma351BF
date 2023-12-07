//
//  LoginService.swift
//  TestandoAPis
//
//  Created by Caio Fabrini on 07/12/23.
//

import UIKit

class LoginService {
    
    func getListCountryURLSession(completion: @escaping (Result<Country, Error>) -> Void) {
        guard let url = URL(string: "https://travel-info-api.p.rapidapi.com/find-embassy?source=turkey&destination=usa") else { return }
        
        let headers = [
            "X-RapidAPI-Key": "dd833e79efmsh637ad2745ae2477p1c7d11jsn93c035258ef1",
            "X-RapidAPI-Host": "travel-info-api.p.rapidapi.com"
        ]
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let dataResult = data else { return }
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                do {
                    let country: Country = try JSONDecoder().decode(Country.self, from: dataResult)
                    completion(.success(country))
                } catch {
                    completion(.failure(error))
                }
            } else {
                completion(.failure(error ?? NSError(domain: "Deu ruim em", code: response.statusCode)))
            }
        }
        task.resume()
    }
    
    

}