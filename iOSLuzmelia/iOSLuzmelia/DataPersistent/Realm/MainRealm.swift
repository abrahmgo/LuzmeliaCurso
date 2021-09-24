//
//  MainRealm.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 22/09/21.
//

import Foundation
import RealmSwift

class Furniture: Object {
    @objc dynamic var name = ""
    
    static func create(withName name: String) -> Furniture {
        let furniture = Furniture()
        furniture.name = name
        
        return furniture
    }
}

class Store: Object {
    @objc dynamic var name = ""
    var furniture = List<Furniture>()
    
    static func create(withName name: String,
                       furniture: [Furniture]) -> Store {
        let store = Store()
        store.name = name
        store.furniture.append(objectsIn: furniture)
        
        return store
    }
}

class MainRealm {
    
    // hace que solo exista un objeto de Realm
    static let shared = MainRealm()
    
    // creacion base de datos
    lazy var realm: Realm = {
        return try! Realm(configuration: .defaultConfiguration)
    }()
    
    
    // tienes que hacer, que wirte y read, sean dinamicos
    func write() {
        let table = Furniture.create(withName: "table")
        let chair = Furniture.create(withName: "chair")
        let store = Store.create(withName: "Test Store",
                                 furniture: [table, chair])
        
        // Write to Realm
        print("Write to Realm")
        try! realm.write {
            realm.add(table)
            realm.add(chair)
            realm.add(store)
        }
    }
    
    func read() {
        // Read from Realm
        print("Read from Realm")
        let data = realm.objects(Store.self)
        print(data)
    }
}
