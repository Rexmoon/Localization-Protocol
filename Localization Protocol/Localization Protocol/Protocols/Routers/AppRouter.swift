//
//  AppRouter.swift
//  Localization Protocol
//
//  Created by Bryan Luna on 10/5/23.
//

import UIKit

protocol Router {
    
    associatedtype Route
    
    var navController: UINavigationController { get set }
    
    func process(route: Route)
    func exit()
}

protocol AppRouter: Router where Route == AppTransition { }
