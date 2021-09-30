//
//  NetworkingType.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 29/09/21.
//

import Foundation
import Alamofire

protocol NetworkingType {
    
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Parameters? { get }
    var encoding: ParameterEncoding { get }
    var headers: HTTPHeaders? { get }
}
