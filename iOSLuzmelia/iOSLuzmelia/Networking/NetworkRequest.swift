//
//  NetworkRequest.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 29/09/21.
//

import Foundation
import Alamofire

protocol NetworkRequestType {
    func request<T>(model: NetworkingType,
                    completionHandler block: @escaping (Result<T, Error>) -> Void) where T: Decodable
}

class NetworkRequest: NetworkRequestType {
    
    static let shared = NetworkRequest()
    
    lazy var manager: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 5
        configuration.timeoutIntervalForResource = 5
        configuration.httpCookieAcceptPolicy = .always
        configuration.httpCookieStorage = .shared
        
        let manager = Session(configuration: configuration)
        return manager
    }()
    
    
    func request<T>(model: NetworkingType,
                    completionHandler block: @escaping (Result<T, Error>) -> Void) where T: Decodable {
        
        manager.request(model.baseURL + model.path,
                        method: model.method,
                        parameters: model.parameters,
                        encoding: model.encoding,
                        headers: model.headers)
            .responseDecodable{ (response: DataResponse<T, AFError>) in
                switch response.result {
                case .success(let model):
                    block(.success(model))
                case .failure(let error):
                    block(.failure(error))
                }
            }
    }
}
