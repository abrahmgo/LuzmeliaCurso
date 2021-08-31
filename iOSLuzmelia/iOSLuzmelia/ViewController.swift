//
//  ViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 27/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let person = Person(age: 23)
//        print(person.age)
//        person.agePlus5Years()
//        print(person.age)
//
//        let modelPerson = ModelPerson(person: person, gender: GenderType.male)
//        modelPerson.agePlus5Years()
//
//        print(person.age)
//        print(modelPerson.getGender())
        
//        let modelHuman = ModelHuman(feets: 2, head: true)
//        let modelHuman2 = ModelHuman2(feets: 5, head: false)
//        let getFeetsHumanUseCase = GetFeetsHumanUseCase(human: modelHuman)
//
//        print(getFeetsHumanUseCase.getFeets())
        
        let listOne = Lists(arrayNums: [2, 1, 5, 90, 8, 4, 2, 55])
        print(listOne.sort())
        print(listOne.convertToString())
        print(listOne.elementPlus5())
        print(listOne.search(number: 55))
        print(listOne.filter(number: 50))
        print(listOne.average())
    }
}

