//
//  CollectionViewCell.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 01/09/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(model: CollectionViewDataType) {
        lblTitle.text = model.title
        lblSubtitle.text = model.subtitle
    }
}

protocol CollectionViewDataType {
    var title: String { get }
    var subtitle: String { get }
}

struct CollectionViewLogin: CollectionViewDataType {
    
    var title: String
    var subtitle: String
    
    init(person: Person) {
        self.title = "\(person.age)"
        self.subtitle = "\(person.age)"
    }
}

struct CollectionViewTransactions: CollectionViewDataType {
    
    var title: String
    var subtitle: String
}
