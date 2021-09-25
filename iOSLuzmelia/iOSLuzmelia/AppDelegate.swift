//
//  AppDelegate.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 27/08/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        // instanciar window con las propiedades del simulador o dispositivo
//        window = UIWindow()
//        // instanciar el primer viewcontroller
//        let loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
//        // decirle a windows quien sera el root
//        window?.rootViewController = loginViewController
//        // hacer que window se construya y sea visible
//        window?.makeKeyAndVisible()
        
        window = UIWindow()
        let lottieViewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: lottieViewController)
        // investigar como quitar esa separacion del navigation controller
        // navigation bar
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}
// tipado
// SOLID
