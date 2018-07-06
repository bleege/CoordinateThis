//
//  AppCoordinator.swift
//  CoordinateThis
//
//  Created by Brad Leege on 6/27/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class AppCoordinator: Coordinator, LoadingViewControllerDelegate, MasterViewControllerDelegate, DetailViewControllerDelegate {
    
    private let window: UIWindow
    private let rootViewController: UINavigationController
    private let disposeBag: DisposeBag
    
    init(window: UIWindow) {
        self.window = window
        self.rootViewController = UINavigationController()
        self.disposeBag = DisposeBag()
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
                masterViewController.delegate = self
                rootViewController.pushViewController(masterViewController, animated: false)
            case .detail:
                let detailViewController = DetailViewController()
                detailViewController.delegate = self
                detailViewController.goBackClicks.subscribe { (_) in
                    self.rootViewController.popViewController(animated: true)
                }.disposed(by: disposeBag)
                rootViewController.pushViewController(detailViewController, animated: true)
            default:
                print("This shouldn't happen")
        }
        
    }
    
    // MARK: LoadingViewControllerDelegate
    func advanceToNextState() {
        start(state: .master)
    }
    
    // MARK: MasterViewControllerDelegate
    func advanceToDetail() {
        start(state: .detail)
    }

    // MARK: DetailViewControllerDelegate
    func returnToMaster() {
        rootViewController.popViewController(animated: true)
    }
}
