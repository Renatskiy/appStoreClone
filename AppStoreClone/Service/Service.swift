//
//  Service.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 29.07.2021.
//

import Foundation

enum RequestError: Error {
    case noData
    case noNetwork
    case decodingError
    case backendError
}

class Service {
    static let shared = Service()
    func get(url: String, completionHandler: @escaping (Result<Games, RequestError>) -> Void){
        guard let url = URL(string: url) else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
             
            if error != nil {
                completionHandler(.failure(.noNetwork))
                return}
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                completionHandler(.failure(.backendError))
                return}
            
            guard let data = data else {
                completionHandler(.failure(.noData))
                return}
            
            if let games = try? JSONDecoder().decode(Games.self, from: data){
                completionHandler(.success(games))
            }else{
                completionHandler(.failure(.decodingError))
            }
        }
        task.resume()
    }
}

