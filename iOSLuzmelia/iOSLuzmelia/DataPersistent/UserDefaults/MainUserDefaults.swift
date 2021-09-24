//
//  MainUserDefaults.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 22/09/21.
//

import Foundation

struct MainUserDefaults {
    
    /*
     //no static
     let myPerson = Person()
     
     //static
     let myPerson = Person.propiedad
     */
    
    static var defaults: UserDefaults? {
        return UserDefaults(suiteName: "mainUserDefaults-Luz")
    }
    
    enum Keys: String {
        case splash
        case email
    }
    
    static var isSplash: Bool {
        set {
            defaults?.set(newValue, forKey: Keys.splash.rawValue)
            defaults?.synchronize()
        }
        
        get {
            return defaults?.value(forKey: Keys.splash.rawValue) as? Bool ?? false
        }
    }
    
    static var email: String {
        set {
            defaults?.set(newValue, forKey: Keys.email.rawValue)
            defaults?.synchronize()
        }
        
        get {
            return defaults?.value(forKey: Keys.email.rawValue) as? String ?? ""
        }
    }
}
