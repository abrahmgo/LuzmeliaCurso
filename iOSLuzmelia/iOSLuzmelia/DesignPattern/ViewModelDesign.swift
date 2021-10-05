//
//  ViewModelDesign.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 04/10/21.
//

import Foundation

//viewmodel, interactor, usecase
class ViewModelDesign: DashboardDelegate {
    
    func makeLogin(username: String, password: String) -> LoginStatus {
        
        if username.count > 8 {
            if password.count > 8 {
                // hacer peticion
                return .success
            } else {
                return .errorPassword
            }
        } else {
            return .errorUsername
        }
    }
    
    func viewDidAppear(message: String) {
        print(message)
        print("estoy en viewmodel design")
    }
}

enum LoginStatus {
    
    case errorPassword
    case errorUsername
    case success
    case error
}
