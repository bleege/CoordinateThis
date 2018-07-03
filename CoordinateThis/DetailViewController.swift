//
//  DetailViewController.swift
//  CoordinateThis
//
//  Created by Brad Leege on 7/2/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    private var goBackViaDelegation = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.0)
        
        goBackViaDelegation.setTitle("Go back via Delegation!", for: .normal)
        goBackViaDelegation.setTitleColor(UIColor.black, for: .normal)
        
        view.addSubview(goBackViaDelegation)
        goBackViaDelegation.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            goBackViaDelegation.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0.5),
            goBackViaDelegation.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0.25)
            ])
    }
}
