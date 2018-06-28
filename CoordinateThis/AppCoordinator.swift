//
//  AppCoordinator.swift
//  CoordinateThis
//
//  Created by Brad Leege on 6/27/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator {
    
    // MARK: Properties
    let window: UIWindow
    var navigationController: UINavigationController = UINavigationController()

    public init(window: UIWindow) {
        self.window = window
        
        self.window.rootViewController = self.navigationController
        self.window.makeKeyAndVisible()
    }
    
}
