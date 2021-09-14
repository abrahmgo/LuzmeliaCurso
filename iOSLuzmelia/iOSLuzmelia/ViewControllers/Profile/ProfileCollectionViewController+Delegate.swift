//
//  ProfileCollectionViewController+Delegate.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 13/09/21.
//

import UIKit

extension ProfileCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.section + 1)
        print(indexPath.row + 1)
    }
}
