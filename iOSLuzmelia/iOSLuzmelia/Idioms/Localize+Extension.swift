//
//  Localize+Extension.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 11/10/21.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self,
                                 tableName: "Idiom",
                                 bundle: Bundle.main,
                                 value: "", comment: "")
    }
}
