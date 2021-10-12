//
//  
//  ViperLoginFactory+Dependencies.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 06/10/21.
//
//

import UIKit

protocol ViperLoginViewType: UIViewController {
	var viewPresenter: ViperLoginPresenterType? { get set }
    
    func statusLogin(status: Bool)
}


protocol ViperLoginPresenterType: AnyObject {
    func makeLogin(user: String)
    func statusLogin(status: Bool)
    func goToDashboard()
    
    var view: ViperLoginViewType? { get set }
    var interactor: ViperLoginInteractorType? { get set }
    var router: ViperLoginRouterType? { get set }
    var inputs: ViperLoginPresenterInputsType { get }
}

protocol ViperLoginPresenterInputsType {
}

protocol ViperLoginPresenterOutputsType {
}

protocol ViperLoginInteractorType: AnyObject {
    func makeLogin(user: String)
    func setup()
    
    var presenter: ViperLoginPresenterType? { get set }
    var dependencies: ViperLoginInteractorDependenciesType { get }
}

protocol ViperLoginRouterType: AnyObject {
    var view: ViperLoginViewType? { get set }
    
    func goToDashboard()
}

protocol ViperLoginInteractorDependenciesType { }
