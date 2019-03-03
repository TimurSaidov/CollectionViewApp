//
//  GalleryCollectionView.swift
//  CollectionViewApp
//
//  Created by Timur Saidov on 02/03/2019.
//  Copyright © 2019 Timur Saidov. All rights reserved.
//

import UIKit

class GalleryCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    var cells: [Sushi] = []
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = .white
        
        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        
        dataSource = self
        delegate = self
        
        register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(cells: [Sushi]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: GalleryCollectionViewCell.reuseId, for: indexPath) as! GalleryCollectionViewCell
        
        let sushi = cells[indexPath.row]
        
        cell.sushiImageView.image = sushi.mainImage
        cell.nameLabel.text = sushi.sushiName
        cell.smallDescriptionLabel.text = sushi.smallDescription
        cell.costLabel.text = "$\(sushi.cost)"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.galleryItemWidth, height: frame.height * 0.8)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
