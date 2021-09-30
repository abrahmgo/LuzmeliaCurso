//
//  RxViewModel.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 27/09/21.
//

import Foundation
import RxSwift
import RxCocoa

class RxViewModel {
    
    let disposeBag = DisposeBag()
    var textField: PublishSubject<String> = PublishSubject()
    
    // BehaviorRelay -> Observable
    // Driver -> Observable
    // PublishSubject -> Observable
    
    init() {
        setListeners()
    }
    
    func setListeners() {
        print("viewmodel")
        textField.subscribe { text in
            /*
             se ejecutara la llamada del servicio de login
             */
            print(text)
        }.disposed(by: disposeBag)
    }
}
