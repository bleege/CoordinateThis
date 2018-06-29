//
//  ViewController.swift
//  CoordinateThis
//
//  Created by Brad Leege on 6/27/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        activityIndicator.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

