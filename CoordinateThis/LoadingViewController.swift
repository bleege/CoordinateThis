//
//  ViewController.swift
//  CoordinateThis
//
//  Created by Brad Leege on 6/27/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import Foundation
import UIKit

protocol LoadingViewControllerDelegate: AnyObject {
    func advanceToNextState()
}

class LoadingViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    weak var delegate: LoadingViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        activityIndicator.startAnimating()
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false, block: { _ in self.delegate?.advanceToNextState()})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

