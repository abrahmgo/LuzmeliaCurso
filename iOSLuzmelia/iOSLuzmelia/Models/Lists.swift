//
//  Lists.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 30/08/21.
//

import Foundation

struct PrettyDictionary {
    let key: String
    let value: Int
}

struct Lists {
    
    let arrayNums: [Int]
    var prettyDictionary: PrettyDictionary?
    
    init(arrayNums: [Int]) {
        self.arrayNums = arrayNums
    }
    
    func sort() {
        print(arrayNums.sorted())
    }
    
    func convertToString() -> [String] {
        
        let arrayString = arrayNums.map({ String($0) })
        return arrayString
    }
    
    func elementPlus5() -> [Int] {
        let newArray = arrayNums.compactMap({ $0 + 5 })
        return newArray
    }
    
    func search(number: Int) -> Bool {
        
        let searchElement = arrayNums.first(where: { $0 == number })
        
//        guard searchElement != nil else {
//            return false
//        }
//        return true
        
        if searchElement != nil {
            return true
        } else {
            return false
        }
    }
    
    func filter(number: Int) -> [Int] {
        
        let newArray = arrayNums.filter({ $0 > number })
        return newArray
    }
    
    func average() -> Int {
        
        let arraySum = arrayNums.reduce(0, +)
        let average = arraySum / arrayNums.count
        return average
    }
    
    func castAny() -> String {
        
        let num = "plabradsdasd" as Any
        
        // castear
//        guard let numToInt = num as? Int else {
//            return ""
//        }
        
        // force unwrapping evitar lo mas que se pueda
        
        let numToInt = num as! Int
        
        return String(numToInt)
    }
}
