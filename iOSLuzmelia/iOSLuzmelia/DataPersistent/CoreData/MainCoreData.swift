//
//  MainCoreData.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 22/09/21.
//

import CoreData
import Foundation

class MainCoreData {
    
    // singleton
    static let shared = MainCoreData()
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "ModelCoreData")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext() {
        print("saving")
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func getContext(entity: String) {
        print("Fetching Data..")
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entity)
        //filtros, peronas > 24, nombre empiece con A // filtros
        request.returnsObjectsAsFaults = false
        do {
            let result = try persistentContainer.viewContext.fetch(request)
            for data in result as! [NSManagedObject] {
                dump(data)
                dump(data.value(forKey: "name") as? String ?? "")
            }
        } catch {
            print("Fetching data Failed")
        }
    }
    
    func deleteContext(tableName: String) -> Any? {
        return nil
    }
}
