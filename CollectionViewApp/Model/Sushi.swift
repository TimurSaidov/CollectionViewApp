//
//  Sushi.swift
//  CollectionViewApp
//
//  Created by Timur Saidov on 02/03/2019.
//  Copyright © 2019 Timur Saidov. All rights reserved.
//

import Foundation
import UIKit

struct Sushi {
    var mainImage: UIImage
    var sushiName: String
    var smallDescription: String
    var cost: Int
    
    static func fetchSushi() -> [Sushi] {
        let firstItem = Sushi(mainImage: UIImage(named: "sushi1")!,
                                   sushiName: "Jengibre",
                                   smallDescription: "Original Japanese",
                                   cost: 8)
        let secondItem = Sushi(mainImage: UIImage(named: "sushi2")!,
                                    sushiName: "Caviar",
                                    smallDescription: "Original Japanese",
                                    cost: 10)
        let thirdItem = Sushi(mainImage: UIImage(named: "sushi3")!,
                                   sushiName: "Camaron",
                                   smallDescription: "Original Japanese",
                                   cost: 7)
        
        let fouthItem = Sushi(mainImage: UIImage(named: "sushi4")!,
                                   sushiName: "Salmon",
                                   smallDescription: "Original Japanese",
                                   cost: 12)
        
        let five = Sushi(mainImage: UIImage(named: "sushi1")!,
                              sushiName: "Jengibre",
                              smallDescription: "Original Japanese",
                              cost: 8)
        let six = Sushi(mainImage: UIImage(named: "sushi2")!,
                             sushiName: "Caviar",
                             smallDescription: "Original Japanese",
                             cost: 10)
        let seven = Sushi(mainImage: UIImage(named: "sushi3")!,
                               sushiName: "Camaron",
                               smallDescription: "Original Japanese",
                               cost: 7)
        
        let eight = Sushi(mainImage: UIImage(named: "sushi4")!,
                               sushiName: "Salmon",
                               smallDescription: "Original Japanese",
                               cost: 12)
        
        
        return [firstItem, secondItem, thirdItem, fouthItem, five, six, seven, eight]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 30
    static let rightDistanceToView: CGFloat = 30
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) / 2
}
