//
//  Person.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 30/08/21.
//

import Foundation

class Person {
    
    var name: String
    var lastName: String
    var age: Int
    
    init(age: Int, name: String, lastName: String) {
        self.age = age
        self.name = name
        self.lastName = lastName
    }
    
    func agePlus5Years() {
        age += 5
    }
}

struct ModelPerson {
    
    var age: Int
    var gender: GenderType
    
    init(person: Person, gender: GenderType) {
        self.age = person.age
        self.gender = gender
    }
    
    func agePlus5Years() {
        print(age + 5)
    }
    
    func getGender() {
        print(gender.getDay())
    }
}

protocol Human {
    var feets: Int { set get }
    var head: Bool { set get }
    
    func getFeets() -> Int
}

struct ModelHuman: Human {
    
    var feets: Int
    var head: Bool
    
    func getFeets() -> Int {
        return feets * 2
    }
}

struct ModelHuman2: Human {
    
    var feets: Int
    var head: Bool
    
    func getFeets() -> Int {
        return feets + 5
    }
}

struct GetFeetsHumanUseCase {
    
    let human: Human
    
    init(human: Human) {
        self.human = human
    }
    
    func getFeets() -> Int {
        return human.getFeets()
    }
}

enum GenderType: String {
    case female = "Female"
    case male = "Male"
    
    func getDay() {
        print("something")
        
        switch self {
        case .female:
            print("today")
        case .male:
            print("yesterday")
        }
    }
}
