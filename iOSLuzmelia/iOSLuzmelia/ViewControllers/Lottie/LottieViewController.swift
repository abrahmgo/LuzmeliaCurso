//
//  LottieViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 17/09/21.
//

import UIKit
import Lottie
import Theme

class LottieViewController: UIViewController {

    var animationView: AnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = GlobalColors.black
        
        let animation = Animation.named("30221-bubbles")
        animationView = AnimationView(animation: animation)
        
        animationView?.frame = view.frame
        animationView?.contentMode = .scaleAspectFill
        animationView?.loopMode = .loop
        animationView?.animationSpeed = 0.5
        
        guard let animationView = animationView else {
            return
        }
        view.addSubview(animationView)
        animationView.play()
    }
}
