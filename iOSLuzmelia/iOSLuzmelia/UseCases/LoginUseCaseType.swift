//
//  LoginUseCaseType.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 01/09/21.
//

import Foundation

protocol LoginUseCaseType {
    func execute(user: String, password: String) -> Bool
}

// app 1
struct LoginUseCase1: LoginUseCaseType {
    
    func execute(user: String, password: String) -> Bool {
        /*
         consultas un servicio en aws, guardas algo s3
         bla bla
         */
        
        return true
    }
}

// app 2
struct LoginUseCase2: LoginUseCaseType {
    
    func execute(user: String, password: String) -> Bool {
        /*
         consultas facebook, o google, twitter
         */
        
        return true
    }
}
