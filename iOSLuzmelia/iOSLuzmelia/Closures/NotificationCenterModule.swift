//
//  NotificationCenterModule.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 24/09/21.
//

import Foundation
import UIKit

class NotificationCenterModule {
    
    func subscribeBackground() {
//        NotificationCenter.default.addObserver(forName: .NSExtensionHostDidEnterBackground,
//                                               object: nil,
//                                               queue: .main) { _ in
//                    print("la app entro en background")
//                }
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(willResignActive),
                                               name: UIScene.willDeactivateNotification,
                                               object: nil)
    }
    
    @objc func willResignActive() {
        print("entre de background")
    }
}
