//
//  PersonalDataAPI.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 29/09/21.
//

import Foundation
import Alamofire

struct PersonalDataAPI: NetworkingType {
    
    var baseURL: String = "https://jsonplaceholder.typicode.com"
    
    var path: String = "/todos/1"
    
    var method: HTTPMethod = .get
    
    var parameters: Parameters? {
        return nil
    }
    
    var encoding: ParameterEncoding {
        return URLEncoding.default
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
}
