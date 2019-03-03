//
//  FoodViewController.swift
//  CollectionViewApp
//
//  Created by Timur Saidov on 02/03/2019.
//  Copyright © 2019 Timur Saidov. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    
    // MARK: Properties

    private var galleryColletionView = GalleryCollectionView()
    var delegate: FoodViewControllerDelegate?
    
    
    // MARK: Outlets
    
    @IBOutlet weak var deliveryLabel: UILabel!
    
    
    // MARK: Actions
    
    @IBAction func menuButtonTapped(_ sender: UIButton) {
        delegate?.toogleMenu()
    }
    
    
    // MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCollectionView()
        loadData()
    }
    
    
    // MARK: Private
    
    private func addCollectionView() {
        view.addSubview(galleryColletionView)
        
        galleryColletionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        galleryColletionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        galleryColletionView.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor, constant: 10).isActive = true
        galleryColletionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
    }
    
    private func loadData() {
        galleryColletionView.set(cells: Sushi.fetchSushi())
    }
}
