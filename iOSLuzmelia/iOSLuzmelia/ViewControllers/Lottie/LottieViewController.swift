//
//  LottieViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 17/09/21.
//

import UIKit
import Lottie
import Theme
import CoreData

class LottieViewController: UIViewController {

//    var animationView: AnimationView?
    let notifications = NotificationCenterModule()
    override func viewDidLoad() {
        super.viewDidLoad()

//        if MainUserDefaults.isSplash {
//            print("nothing")
//        } else {
//            showLoader(true)
//        }
        
//        view.backgroundColor = GlobalColors.black
//
//        let animation = Animation.named("30221-bubbles")
//        animationView = AnimationView(animation: animation)
//
//        animationView?.frame = view.frame
//        animationView?.contentMode = .scaleAspectFill
//        animationView?.loopMode = .loop
//        animationView?.animationSpeed = 0.5
//
//        guard let animationView = animationView else {
//            return
//        }
//        view.addSubview(animationView)
//        animationView.play()
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            self.showLoader(false)
//            MainUserDefaults.isSplash = true
//        }
        
        // REALM
//        MainRealm.shared.write()
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            MainRealm.shared.read()
//        }
        
        
        // COREDATA
        
        let context = MainCoreData.shared.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Store2", in: context)
        let newStore = NSManagedObject(entity: entity!, insertInto: context)
        
        newStore.setValue("Test", forKey: "name")
        
        MainCoreData.shared.saveContext()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            MainCoreData.shared.getContext(entity: "Store2")
        }
        
        useClosure()
        notifications.subscribeBackground()
        
        let person = Person(age: 23, name: "Juan", lastName: "Moncado")
        NotificationCenter.default.post(name: Notification.Name("customNotification"), object: person)
    }
    
    func useClosure() {
        let myClosures = Closures()
        myClosures.example()
    }
}
