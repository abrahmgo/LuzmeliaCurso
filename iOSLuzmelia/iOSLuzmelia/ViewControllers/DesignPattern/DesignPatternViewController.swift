//
//  DesignPatternViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 04/10/21.
//
// MVVM
import UIKit

class DesignPatternViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    
    var viewModelDesign: ViewModelDesign?
    var coordinatorDesign: CoordinatorDesign?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModelDesign = ViewModelDesign()
        guard let viewModel = viewModelDesign else {
            return
        }
        coordinatorDesign = CoordinatorDesign(viewController: self,
                                              viewModelDesign: viewModel)
        
        print(SingletonDesign.shared.myAge)
        
        SingletonDesign.shared.myAge = 20
        
        print(SingletonDesign.shared.getMyAge())
    }
    
    @IBAction func makeLogin(_ sender: Any) {
        
        let username = txtUsername.text ?? ""
        let password = txtPassword.text ?? ""
        
        let loginStatus = viewModelDesign?.makeLogin(username: username,
                                                     password: password) ?? .error
        
        switch loginStatus {
        case .success:
            coordinatorDesign?.goToDasboard()
        case .error:
            coordinatorDesign?.showAlert(message: "Error, intenta más tarde")
        case .errorPassword:
            coordinatorDesign?.showAlert(message: "Revisa tu contraseña")
        case .errorUsername:
            coordinatorDesign?.showAlert(message: "Revisa tu usuario")
        }
    }
}
