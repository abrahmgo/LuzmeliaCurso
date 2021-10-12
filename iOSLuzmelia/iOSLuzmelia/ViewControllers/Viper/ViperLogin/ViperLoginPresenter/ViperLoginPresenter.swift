//
//  
//  ViperLoginPresenter.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 06/10/21.
//
//

import UIKit

class ViperLoginPresenter: ViperLoginPresenterType, ViperLoginPresenterInputsType {
    
    var inputs: ViperLoginPresenterInputsType { return self }
    weak var view: ViperLoginViewType?
    var interactor: ViperLoginInteractorType?
    var router: ViperLoginRouterType?

    init(interactor: ViperLoginInteractorType,
         router: ViperLoginRouterType) {
        self.router = router
        self.interactor = interactor
    }

	// MARK: - Presenter - Private Methods
}

extension ViperLoginPresenter {
    
    func makeLogin(user: String) {
        interactor?.makeLogin(user: user)
    }
    
    func statusLogin(status: Bool) {
        view?.statusLogin(status: status)
    }
    
    func goToDashboard() {
        router?.goToDashboard()
    }
}
