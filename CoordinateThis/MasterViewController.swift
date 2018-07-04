//
//  MasterViewController.swift
//  CoordinateThis
//
//  Created by Brad Leege on 7/2/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import Foundation
import UIKit

class MasterViewController: UIViewController {

    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }

    private func setupView() {
        view.backgroundColor = UIColor(red: 0.83, green: 0.83, blue: 0.83, alpha: 1.0)        
        
        button.setTitle("Tap for Details", for: .normal)
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
}
