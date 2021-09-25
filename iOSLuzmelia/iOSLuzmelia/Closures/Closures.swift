//
//  Closures.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 24/09/21.
//

import Foundation

class Closures {
    
    private let array2 = [1, 2, 3]
    
    func example() {
        let array = [1, 2, 3]
        
        array.map { [weak self] element in
            
            print(element)
            print(self?.array2)
        }
        
        createClosure { result in
            print("closure 1")
            switch result {
            case .success(let person):
                dump(person)
            case .failure(let error):
                print(error)
            }
        }
        
        createClosure2 { [weak self] person in
            print("closure 2")
            dump(person)
            //print(self?.array2)
        }
    }
    
    func createClosure(completionHandler block: @escaping (Result<Person, Error>) -> Void) {
        /*
         todo funcionalidad, vas un servicio
         */
//        let person = Person(age: 23, name: "Pedro", lastName: "Dominguez")
//        block(.success(person))
        
        block(.failure("no puede obtener la persona"))
    }
    
    func createClosure2(completionHandler block: @escaping (Person) -> Void) {
        /*
         todo funcionalidad, vas un servicio
         */
        let person = Person(age: 23, name: "Pedro", lastName: "Dominguez")
        block(person)
        
//        block(.failure("hola"))
    }
}

extension String: Error {
    
    var localizedError: String {
        return self
    }
}
