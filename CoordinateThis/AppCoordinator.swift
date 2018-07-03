//
//  AppCoordinator.swift
//  CoordinateThis
//
//  Created by Brad Leege on 6/27/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator, LoadingViewControllerDelegate {
    
    private let window: UIWindow
    private let rootViewController: UINavigationController
    
    init(window: UIWindow) {
        self.window = window
        self.rootViewController = UINavigationController()
    }

    func start(state: State = .loading) {
        self.window.rootViewController = self.rootViewController
        self.window.makeKeyAndVisible()
                
        switch state {
            case .loading:
                let loadingViewController = LoadingViewController()
                loadingViewController.delegate = self
                rootViewController.pushViewController(loadingViewController, animated: false)
            case .master:
                rootViewController.viewControllers = []
                let masterViewController = MasterViewController()
                rootViewController.pushViewController(masterViewController, animated: false)
            default:
                print("This shouldn't happen")
        }
        
    }
    
    // MARK: LoadingViewControllerDelegate
    func advanceToNextState() {
        start(state: .master)
    }
}
