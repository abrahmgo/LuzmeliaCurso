//
//  
//  ViperLoginInteractor.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 06/10/21.
//
//

import UIKit

class ViperLoginInteractor: ViperLoginInteractorType {
    
    var presenter: ViperLoginPresenterType?
    let dependencies: ViperLoginInteractorDependenciesType
    
    init(dependencies: ViperLoginInteractorDependenciesType) {
        self.dependencies = dependencies
    }
}

// MARK: - Interactor - Public Methods (Through Type)
extension ViperLoginInteractor {
    
    func setup() {
        // interactor begins
    }
    
    func makeLogin(user: String) {
        /*
         servicios bla bla
         */
        print(user)
        print("haciendo login en interector")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.presenter?.statusLogin(status: true)
        }
    }
}
