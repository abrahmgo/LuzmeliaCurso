//
//  CoordinatorDesign.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 04/10/21.
//
// cordinator, router

import Foundation
import UIKit

class CoordinatorDesign {
    
    let viewController: UIViewController
    let viewModelDesign: ViewModelDesign
    
    init(viewController: UIViewController,
         viewModelDesign: ViewModelDesign) {
        self.viewController = viewController
        self.viewModelDesign = viewModelDesign
    }
    
    func goToDasboard() {
        let dashboardViewController = DashboardViewController()
        dashboardViewController.delegate = viewModelDesign
        viewController.navigationController?.pushViewController(dashboardViewController, animated: true)
    }
    
    func showAlert(message: String) {
        
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
        
        alertController.addAction(alertAction)
        
        viewController.present(alertController, animated: true, completion: nil)
    }
}
