//
//  
//  ViperLoginFactory.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 06/10/21.
//
//

import Foundation
import UIKit

struct ViperLoginFactory {
    
    static func build() -> ViperLoginViewController {
        
        let dependencies: ViperLoginInteractorDependenciesType = ViperLoginInteractorDependencies()
        let interactor: ViperLoginInteractorType = ViperLoginInteractor(dependencies: dependencies)
        let router: ViperLoginRouterType = ViperLoginRouter()
        let presenter: ViperLoginPresenterType = ViperLoginPresenter(interactor: interactor, router: router)
        let view: ViperLoginViewType = ViperLoginViewController(presenter: presenter)
        
        presenter.view = view
        interactor.presenter = presenter
        router.view = view
        
        guard let viewController: ViperLoginViewController = view as? ViperLoginViewController else {
            return ViperLoginViewController(presenter: presenter)
        }
        
        return viewController
    }
}

struct ViperLoginInteractorDependencies: ViperLoginInteractorDependenciesType {}
