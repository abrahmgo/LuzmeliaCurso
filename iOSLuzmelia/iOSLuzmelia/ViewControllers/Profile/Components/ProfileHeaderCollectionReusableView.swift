//
//  ProfileHeaderCollectionReusableView.swift
//  iOSLuzmelia
//
//  Created by Luzamelia Breceda on 16/09/21.
//

import UIKit

class ProfileHeaderCollectionReusableView: UICollectionReusableView {

   //crearla como UiCollectionViewCell (como la celda de personal data cambiando etiquetas y eso)
    @IBOutlet weak var lblHeader: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lblHeader.text = "Header"
    }
    
}
