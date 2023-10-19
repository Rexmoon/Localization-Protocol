//
//  AppTransition.swift
//  Localization Protocol
//
//  Created by Bryan Luna on 10/5/23.
//

import Foundation

enum AppTransition {
    
    case showHome
    
    var identifier: String { "\(self)" }
    
    func coordinatorFor<R: AppRouter>(router: R) -> Coordinator {
        switch self {
            case .showHome: return HomeCoordinator<R>(router: router)
        }
    }
}
