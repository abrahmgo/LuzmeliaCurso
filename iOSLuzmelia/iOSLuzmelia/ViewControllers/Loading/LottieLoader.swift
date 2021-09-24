//
//  LottieLoader.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 22/09/21.
//

import Foundation
import UIKit
import Lottie

public class LottieLoader: UIView {

    let overlayView = UIView()
    let animation: Animation?

    public init(frame: CGRect, animation: Animation?) {
        self.animation = animation
        super.init(frame: frame)
        
        overlayView.frame = frame
        overlayView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        overlayView.backgroundColor = .black
        overlayView.alpha = 0.0
        addSubview(overlayView)
        addLoader()
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func removeFromSuperview() {
        UIView.animate(withDuration: 0.2, animations: {
            self.overlayView.alpha = 0.0
        }) { (_) in
            super.removeFromSuperview()
        }
    }
    
    private func addLoader() {
        
        guard let animation = animation else {
            return
        }
        
        let animationView = AnimationView(animation: animation)
        animationView.loopMode = .loop
        animationView.frame = overlayView.frame
        overlayView.addSubview(animationView)
        animationView.play()
    }
}
