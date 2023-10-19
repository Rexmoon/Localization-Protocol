//
//  App.swift
//  Localization Protocol
//
//  Created by Bryan Luna on 10/5/23.
//

import UIKit

final class App {
    
    var navController: UINavigationController = .init()
}

extension App: Coordinator {
    
    func start() {
        process(route: .showHome)
    }
}

extension App: AppRouter {
    
    func process(route: AppTransition) {
        let coordinator = route.coordinatorFor(router: self)
        
        coordinator.start()
        
        print(route.identifier)
    }
    
    func exit() {
        navController.popToRootViewController(animated: true)
    }
}
