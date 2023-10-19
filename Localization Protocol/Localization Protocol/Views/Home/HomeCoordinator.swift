//
//  HomeCoordinator.swift
//  Localization Protocol
//
//  Created by Bryan Luna on 10/5/23.
//

import UIKit

final class HomeCoordinator<R: AppRouter> {
    
    private let router: R
    
    private lazy var homeViewController: UIViewController = {
        let viewController = HomeViewController<R>(router: router)
        return viewController
    }()
    
    init(router: R) {
        self.router = router
    }
}

extension HomeCoordinator: Coordinator {
    
    func start() {
        router.navController.pushViewController(homeViewController, animated: true)
    }
}
