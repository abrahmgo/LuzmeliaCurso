//
//  Dashboard+Constrains.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 11/09/21.
//

import UIKit

extension DashboardViewController {
    
    func createButtons() {
        // Button to go next
        let btnOriginF = CGPoint(x: 0, y: 0)
        let btnSizeF = CGSize(width: 100, height: 100)
        let btnFrameF = CGRect(origin: btnOriginF, size: btnSizeF)
        btnToGoForward = UIButton(frame: btnFrameF)
        btnToGoForward?.setTitle("go to next", for: .normal)
        btnToGoForward?.setTitleColor(.blue, for: .normal)
        btnToGoForward?.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        
        // Button to go root
        let btnOrigin = CGPoint(x: 0.0, y: 0.0)
        let btnSize = CGSize(width: 100, height: 100)
        let btnFrame = CGRect(origin: btnOrigin, size: btnSize)
        btnGoToBack = UIButton(frame: btnFrame)
        btnGoToBack?.setTitle("go to Root", for: .normal)
        btnGoToBack?.setTitleColor(.blue, for: .normal)
        btnGoToBack?.addTarget(self, action: #selector(goToRoot), for: .touchUpInside)
        
        guard let buttonBack = btnGoToBack,
              let buttonForward = btnToGoForward else {
            return
        }
        
        view.addSubview(buttonBack)
        view.addSubview(buttonForward)
    }
    
    func addConstrainsButtonForward() {
        
        guard let buttonForward = btnToGoForward,
              let buttonBack = btnGoToBack else {
            return
        }
        
        buttonForward.translatesAutoresizingMaskIntoConstraints = false
        let leftConst = NSLayoutConstraint(item: view,
                                           attribute: .trailing,
                                           relatedBy: .equal,
                                           toItem: buttonForward,
                                           attribute: .trailing,
                                           multiplier: 1.0,
                                           constant: 20)
        let rightConst = NSLayoutConstraint(item: buttonForward,
                                            attribute: .leading,
                                            relatedBy: .equal,
                                            toItem: view,
                                            attribute: .leading,
                                            multiplier: 1.0,
                                            constant: 20)
        let bottomConst = NSLayoutConstraint(item: buttonForward,
                                             attribute: .bottom,
                                             relatedBy: .lessThanOrEqual,
                                             toItem: view,
                                             attribute: .bottom,
                                             multiplier: 1.0,
                                             constant: 20)
        let topConst = NSLayoutConstraint(item: buttonForward,
                                          attribute: .top,
                                          relatedBy: .equal,
                                          toItem: buttonBack,
                                          attribute: .bottom,
                                          multiplier: 1.0,
                                          constant: 50)
        
        let widthView = NSLayoutConstraint(item: buttonForward, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 150)
        let heightView = NSLayoutConstraint(item: buttonForward, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        NSLayoutConstraint.activate([widthView, heightView, leftConst, rightConst, bottomConst, topConst])
    }
    
    func addConstrainsButtonBack() {
        
        guard let buttonBack = btnGoToBack else {
            return
        }
        
        buttonBack.translatesAutoresizingMaskIntoConstraints = false
        let leftConstBack = NSLayoutConstraint(item: view,
                                               attribute: .trailing,
                                               relatedBy: .equal,
                                               toItem: buttonBack,
                                               attribute: .trailing,
                                               multiplier: 1.0,
                                               constant: 20)
        let rightConstBack = NSLayoutConstraint(item: buttonBack,
                                                attribute: .leading,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .leading,
                                                multiplier: 1.0,
                                                constant: 20)
        let topConstBack = NSLayoutConstraint(item: buttonBack,
                                              attribute: .top,
                                              relatedBy: .equal,
                                              toItem: view,
                                              attribute: .top,
                                              multiplier: 1.0,
                                              constant: 100)
        let widthView = NSLayoutConstraint(item: buttonBack, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 150)
        let heightView = NSLayoutConstraint(item: buttonBack, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        NSLayoutConstraint.activate([widthView, heightView, leftConstBack, topConstBack, rightConstBack])
    }
}
