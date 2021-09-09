//
//  Profile.swift
//  iOSLuzmelia
//
//  Created by Luzamelia Breceda on 08/09/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var btnGoToBack: UIButton?
    
    // es la primer en ejecutarse
    override func viewDidLoad() {
        print("primer metodo en ejecutarse")
        
        view.backgroundColor = .red
        let btnOrigin = CGPoint(x: 0.0, y: 0.0)
        let btnSize = CGSize(width: 200, height: 200)
        let btnFrame = CGRect(origin: btnOrigin, size: btnSize)
        btnGoToBack = UIButton(frame: btnFrame)
        btnGoToBack?.setTitle("go to Back", for: .normal)
        btnGoToBack?.setTitleColor(.blue, for: .normal)
        btnGoToBack?.addTarget(self, action: #selector(goToBack), for: .touchUpInside)
        
        if let button = btnGoToBack {
            view.addSubview(button)
        }
    }

    @objc func goToBack() {
        // regresar a vistas anteriores
        navigationController?.popViewController(animated: true)
    }
    
}
