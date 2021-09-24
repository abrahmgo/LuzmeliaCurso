//
//  Loading.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 22/09/21.
//

import UIKit
import Lottie

enum Loading {
    static let animation = Animation.named("30221-bubbles")
}

extension UIViewController {
    
    func showLoader(_ isShowing: Bool) {
        let root = UIApplication.shared.keyWindow?.rootViewController
        
        if let topController = root?.presentedViewController ?? root {
            
            if isShowing {
                // para cambiar el color de overlay
                topController.view.showLottieLoader(with: Loading.animation)
            } else {
                topController.view.removeLottieLoader()
            }
        }
    }
}

extension UIView {
    
    func showLottieLoader(with animation: Animation?,
                                 overlayColor: UIColor? = nil) {
        
        guard (subviews.filter { $0 is LottieLoader }).isEmpty else {
            return
        }
        
        subviews.filter { $0.tag == SubviewsTag.loader.rawValue }.forEach { $0.removeFromSuperview() }
        
        let lottieLoader = LottieLoader(frame: frame, animation: animation)
        lottieLoader.tag = SubviewsTag.loader.rawValue
        
        if let color = overlayColor {
            lottieLoader.overlayView.backgroundColor = color
        }
        
        UIView.animate(withDuration: 0.2) {
            lottieLoader.overlayView.alpha = 0.8
        }
        
        self.addSubview(lottieLoader)
    }
    
    func removeLottieLoader() {
        if let lottieLoader = (subviews.first { $0 is LottieLoader }) {
            lottieLoader.removeFromSuperview()
        }
    }
}

enum SubviewsTag: Int {
    case loader = 101
    case notification = 102
}
