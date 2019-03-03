//
//  ContainerViewController.swift
//  CollectionViewApp
//
//  Created by Timur Saidov on 02/03/2019.
//  Copyright © 2019 Timur Saidov. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, FoodViewControllerDelegate {
    
    
    // MARK: Properties
    
    var controller: UIViewController!
    var menuViewController: UIViewController!
    var isMove: Bool = false
    
    
    // MARK: Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        configureFoodViewController()
    }
    
    func configureFoodViewController() {
        let foodViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! FoodViewController
        foodViewController.delegate = self
        controller = foodViewController
        
        addChild(controller)
        view.addSubview(controller.view)
    }
    
    func configureMenuViewController() {
        if menuViewController == nil {
            menuViewController = MenuViewController()
            addChild(menuViewController)
            view.insertSubview(menuViewController.view, at: 0) // Menu лежит под Food. Если сдвинуть Food вправо, то будет виден Menu.
        }
    }
    
    func showMenuViewController(shoudMove: Bool) {
        if shoudMove {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.controller.view.frame.origin.x = self.controller.view.frame.width - 140
            }) { (finished) in
                
            }
        } else {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.controller.view.frame.origin.x = 0
            }) { (finished) in
                
            }
        }
    }
    
    
    // MARK: Protocol
    
    func toogleMenu() {
        configureMenuViewController()
        isMove = !isMove
        showMenuViewController(shoudMove: isMove)
    }
}
