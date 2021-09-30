//
//  GetBalanceUseCase.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 27/09/21.
//

import Foundation
import RxSwift

protocol GetBalanceUseCaseType {
    func excute() -> Observable<Int>
}

struct GetBalanceUseCase: GetBalanceUseCaseType {
    
    func excute() -> Observable<Int> {
        /*
         consultas servicios, haces operaciones con balance
         */
        //return .just(4324)
        return .error("fallo el servicio")
    }
}
