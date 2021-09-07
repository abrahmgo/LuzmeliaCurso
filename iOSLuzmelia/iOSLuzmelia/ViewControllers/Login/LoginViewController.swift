//
//  LoginViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 06/09/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Login View Controller"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToDashboard(_ sender: Any) {
        let dashboardViewController = DashboardViewController()
        // pushear nuevas vistar
        navigationController?.pushViewController(dashboardViewController, animated: true)
        
//        present(dashboardViewController, animated: true) {
//            print("se ejecuta despues de ejecutar el present")
//        }
    }
}
