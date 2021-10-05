//
//  DashboardViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 06/09/21.
//

import UIKit

protocol DashboardDelegate: AnyObject {
    func viewDidAppear(message: String)
}

class DashboardViewController: UIViewController {
    
    var btnGoToBack: UIButton?
    weak var delegate: DashboardDelegate?
    
    // es la primer en ejecutarse
    override func viewDidLoad() {
        print("primer metodo en ejecutarse")
        
        view.backgroundColor = .white
        let btnOrigin = CGPoint(x: 0.0, y: 0.0)
        let btnSize = CGSize(width: 200, height: 200)
        let btnFrame = CGRect(origin: btnOrigin, size: btnSize)
        btnGoToBack = UIButton(frame: btnFrame)
        btnGoToBack?.setTitle("hola", for: .normal)
        btnGoToBack?.setTitleColor(.blue, for: .normal)
        btnGoToBack?.addTarget(self, action: #selector(goToRoot), for: .touchUpInside)
        
        if let button = btnGoToBack {
            view.addSubview(button)
        }
    }

    @objc func goToRoot() {
        // regresar a vistas anteriores
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("se ejecutan cuando aparece")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("se ejecuta cuando ya aparecio")
        delegate?.viewDidAppear(message: "estoy en dashboarviewcontroller")
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
