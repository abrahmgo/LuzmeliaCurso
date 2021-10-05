//
//  SingletonDesign.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 04/10/21.
//

import Foundation

class SingletonDesign {
    
    static let shared = SingletonDesign()
    
    var myAge = 0
    
    func getMyAge() -> Int {
        return myAge
    }
}
