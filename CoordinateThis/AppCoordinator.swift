//
//  AppCoordinator.swift
//  CoordinateThis
//
//  Created by Brad Leege on 6/27/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {

    let window: UIWindow
    let rootViewController: UINavigationController
    
    init(window: UIWindow) {
        self.window = window
        self.rootViewController = UINavigationController()
        
        // Testing
        let emptyViewController = UIViewController()
        emptyViewController.view.backgroundColor = .cyan
        rootViewController.pushViewController(emptyViewController, animated: false)
    }

    func start() {
        self.window.rootViewController = self.rootViewController
        self.window.makeKeyAndVisible()
    }
}
