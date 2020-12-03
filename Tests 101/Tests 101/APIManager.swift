//
//  APIManager.swift
//  Tests 101
//
//  Created by Leonardo Oliveira on 01/12/20.
//

import Foundation

enum APIManagerError: Error {
    case failed
}

final class APIManager {
    
    func consumeAPI(from url: URL, completion: @escaping (Result<String, APIManagerError>) -> Void) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let data = data {
                completion(.success(String(data: data, encoding: .utf8)!))
            }
            
            if let response = response {
//                print(response)
            }
            
            if let error = error {
                completion(.failure(.failed))
            }
        }.resume()
    }
}
