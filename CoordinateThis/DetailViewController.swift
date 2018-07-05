//
//  DetailViewController.swift
//  CoordinateThis
//
//  Created by Brad Leege on 7/2/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import UIKit

protocol DetailViewControllerDelegate: AnyObject {
    func returnToMaster()
}

class DetailViewController: UIViewController {
    
    private var goBackViaDelegation = UIButton()
    private var goBackViaRx = UIButton()

    weak var delegate: DetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.0)
        
        goBackViaDelegation.setTitle("Go back via Delegation!", for: .normal)
        goBackViaDelegation.setTitleColor(UIColor.black, for: .normal)
        goBackViaDelegation.addTarget(self, action: #selector(handleGoBackViaDelegate(sender:)), for: .touchUpInside)
        
        goBackViaRx.setTitle("Go back via Rx", for: .normal)
        goBackViaRx.setTitleColor(UIColor.black, for: .normal)
        
        view.addSubview(goBackViaDelegation)
        view.addSubview(goBackViaRx)
        goBackViaDelegation.translatesAutoresizingMaskIntoConstraints = false
        goBackViaRx.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            goBackViaDelegation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goBackViaDelegation.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.height * 0.34),
            goBackViaRx.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goBackViaRx.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.height * 0.67)
            ])
    }
    
    @objc func handleGoBackViaDelegate(sender: AnyObject) {
        delegate?.returnToMaster()
    }
}
