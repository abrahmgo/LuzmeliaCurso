//
//  
//  ViperLoginRouter.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 06/10/21.
//
//

import UIKit

class ViperLoginRouter: ViperLoginRouterType {
    
	weak var view: ViperLoginViewType?

	// MARK: - Router - Private Methods
}

// MARK: - Router - Public Methods (Through Type)
extension ViperLoginRouter {
    
    func goToDashboard() {
        let dashboardViewController = DashboardViewController()
        view?.navigationController?.pushViewController(dashboardViewController, animated: true)
    }
}
