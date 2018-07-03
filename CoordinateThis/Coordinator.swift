//
//  Coordinator.swift
//  CoordinateThis
//
//  Created by Brad Leege on 6/28/18.
//  Copyright © 2018 Brad Leege. All rights reserved.
//

import Foundation

protocol Coordinator {
    func start(state: State)
}

enum State {
    case loading
    case master
    case detail
}
