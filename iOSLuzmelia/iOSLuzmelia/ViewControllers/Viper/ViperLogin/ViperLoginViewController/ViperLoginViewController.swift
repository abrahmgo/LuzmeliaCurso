//
//  
//  ViperLoginViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 06/10/21.
//
//

import UIKit

class ViperLoginViewController: UIViewController {

    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    weak var viewPresenter: ViperLoginPresenterType?
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(presenter: ViperLoginPresenterType) {
        self.viewPresenter = presenter
        super.init(nibName: "ViperLoginViewController", bundle: Bundle(for: type(of: self)))
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeUI()
//        viewPresenter?.interactor?.setup()
//        customizeUI()
//
//        viewPresenter?.makeLogin(user: "312312")
    }	
	
    private func customizeUI() {
        lblHeader.text = "login.title".localized
    }
}

extension ViperLoginViewController: ViperLoginViewType {
    
    func statusLogin(status: Bool) {
        if status {
            lblTitle.text = "Exito"
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.viewPresenter?.goToDashboard()
            }
        } else {
            lblTitle.text = "Intenta de nuevo"
        }
    }
}
