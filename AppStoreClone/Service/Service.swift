//
//  Service.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 29.07.2021.
//

import Foundation

enum RequestError: Error {
    //добавить самописные ошибки
    case noData
    case noNetwork(message: String)
    case decodingError(message: Int)
    case backendError
}

extension RequestError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .noData:
            return "No data"
        case .noNetwork(message: let message):
            return "Возникла ошибка с сетью \(message)"
        case .backendError:
            return "backend error"
        case .decodingError(message: let message):
            return "decoding error \(message)"
        }
    }
}


class Service {
    static let shared = Service()
    func get(url: String, completionHandler: @escaping (Result<Games, RequestError>) -> Void){
        guard let url = URL(string: url) else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
             
            if let error = error {
                completionHandler(.failure(.noNetwork(message: error.localizedDescription)))
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
                completionHandler(.failure(.decodingError(message: httpResponse.statusCode)))
            }
        }
        task.resume()
    }
}

