//
//  DashboardViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 06/09/21.
//

import UIKit

class DashboardViewController: UIViewController {
    
    var btnGoToBack: UIButton?
    var btnToGoForward: UIButton?
    
    // es la primer en ejecutarse
    override func viewDidLoad() {
        print("primer metodo en ejecutarse")
        
        view.backgroundColor = .white
                
        createButtons()
        addConstrainsButtonForward()
        addConstrainsButtonBack()
    }

    @objc func goToRoot() {
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    @objc func goToNext() {
        let profileViewController = ProfileViewController()
        // regresar a vistas anteriores
        navigationController?.pushViewController(profileViewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("se ejecutan cuando aparece")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("se ejecuta cuando ya aparecio")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("se ejecuta cuando la vista esta por desaparecer")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("se ejecunta cuando la vista ya no existe")
    }
}
