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
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(customNotification(_:)),
                                               name: NSNotification.Name("customNotification"),
                                               object: nil)
    }
    
    
    @objc func customNotification(_ notification: Notification?) {
        
        guard let person = notification?.object as? Person else {
            return
        }
        dump("recibi notificacion")
        dump(person)
    }
    
    @IBAction func goToDashboard(_ sender: Any) {
        let dashboardViewController = LottieViewController()
        // pushear nuevas vistar
        navigationController?.pushViewController(dashboardViewController, animated: true)
        
//        present(dashboardViewController, animated: true) {
//            print("se ejecuta despues de ejecutar el present")
//        }
    }
}
