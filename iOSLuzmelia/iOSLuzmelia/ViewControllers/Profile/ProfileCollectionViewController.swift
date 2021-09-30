//
//  ProfileCollectionViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 13/09/21.
//

import UIKit
// ios 13+
// tablas ios 8+
class ProfileCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        collectionView.register(UINib(nibName: "PersonalDataCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PersonalDataCollectionViewCell")
        collectionView.collectionViewLayout = createCollectionViewLayout()
        collectionView.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    /* investigar como meter una celda en la seccion */

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        /* para poder decidir si en la seccion 1 son 10 celdas y en la seccion 2, 40 celdas */
        return 20
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonalDataCollectionViewCell", for: indexPath) as! PersonalDataCollectionViewCell
//        let cellData = PersonalDataView2(name: "Andres", middleName: "Bonilla", titleButton: "Guardar")
        let person = Person(age: 12, name: "Pedro", lastName: "Lupillo")
        let cellData = PersonalDataView(person: person, titleButton: "Guardar")
        cell.delegate = self
        cell.configure(data: cellData)
        /* dependiendo el indice pintar diferentes celdas */
        // Configure the cell
    
        return cell
    }
}

extension ProfileCollectionViewController {
    
    func createCollectionViewLayout() -> UICollectionViewLayout {
        // Define Item Size
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(200.0))

        // Create Item
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        // Define Group Size
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(200.0))

        // Create Group
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [ item ])

        // Create Section
        let section = NSCollectionLayoutSection(group: group)

        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension ProfileCollectionViewController: PersonalDataCellDelegate {
    
    func dataSave() {
        let dashboardViewController = DashboardViewController()
        navigationController?.pushViewController(dashboardViewController, animated: true)
    }
}

// SOLID
// Single responsailty
