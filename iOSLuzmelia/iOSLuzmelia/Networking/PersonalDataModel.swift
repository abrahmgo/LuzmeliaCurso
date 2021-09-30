//
//  PersonalDataModel.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 29/09/21.
//

import Foundation

struct PersonalDataModel: Decodable {
    
    let userId: Int?
    let id: Int?
    let title: String?
    let completed: Bool?
}
