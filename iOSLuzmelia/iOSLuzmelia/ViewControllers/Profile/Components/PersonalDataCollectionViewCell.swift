//
//  PersonalDataCollectionViewCell.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 13/09/21.
//

import UIKit

protocol PersonalDataCellDelegate: AnyObject {
    func dataSave()
}

class PersonalDataCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblMiddleName: UILabel!
    @IBOutlet weak var btnSave: UIButton!
    
    weak var delegate: PersonalDataCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(data: PersonalDataTypeView) {
        lblName.text = data.name
        lblMiddleName.text = data.middleName
        btnSave.setTitle(data.titleButton, for: .normal)
    }
    
    @IBAction func saveData(_ sender: Any) {
        delegate?.dataSave()
    }
}

protocol PersonalDataTypeView {
    var name: String { get }
    var middleName: String { get }
    var titleButton: String { get }
}

struct PersonalDataView: PersonalDataTypeView {
    
    let person: Person
    let name: String
    let middleName: String
    let titleButton: String
    
    init(person: Person, titleButton: String) {
        self.person = person
        self.name = person.name
        self.middleName = person.lastName
        self.titleButton = titleButton
    }
}

struct PersonalDataView2: PersonalDataTypeView {
    
    let name: String
    let middleName: String
    let titleButton: String
    
    init(name: String, middleName: String, titleButton: String) {
        self.name = name
        self.middleName = middleName
        self.titleButton = titleButton
    }
}
