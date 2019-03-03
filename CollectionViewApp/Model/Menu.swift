//
//  Menu.swift
//  CollectionViewApp
//
//  Created by Timur Saidov on 02/03/2019.
//  Copyright © 2019 Timur Saidov. All rights reserved.
//

import Foundation
import UIKit

enum Menu: Int, CustomStringConvertible {
    case Profile
    case Menu
    case Contacts
    case Settings
    
    var description: String {
        switch self {
        case .Profile:
            return "Profile"
        case .Menu:
            return "Menu"
        case .Contacts:
            return "Contacts"
        case .Settings:
            return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile:
            return UIImage(named: "profile") ?? UIImage()
        case .Menu:
            return UIImage(named: "menu") ?? UIImage()
        case .Contacts:
            return UIImage(named: "contacts") ?? UIImage()
        case .Settings:
            return UIImage(named: "settings") ?? UIImage()
        }
    }
}
