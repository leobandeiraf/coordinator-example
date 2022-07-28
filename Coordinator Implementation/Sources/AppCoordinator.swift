//
//  AppCoordinator.swift
//  Coordinator Implementation
//
//  Created by Leonardo Bandeira on 23/06/22.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    var parentCoordinator: Coordinator?
    var childCoordinator = [Coordinator]()
    var rootViewController: UIViewController?
    
    init() {
        self.navigationController = UINavigationController()
    }
    
    func start() {
        let homeCoordinator = HomeCoordinator(navigationController)
        homeCoordinator.parentCoordinator = self
        childCoordinator.append(homeCoordinator)
        homeCoordinator.start()
    }
}
