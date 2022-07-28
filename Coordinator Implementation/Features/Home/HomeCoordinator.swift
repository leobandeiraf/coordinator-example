//
//  HomeCoordinator.swift
//  Coordinator Implementation
//
//  Created by Leonardo Bandeira on 23/06/22.
//

import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    var parentCoordinator: Coordinator?
    var childCoordinator = [Coordinator]()
    var rootViewController: UIViewController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = FeedViewController()
        viewController.coordinator = self
        rootViewController = viewController
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToPublish() {
        let publishCoordinator = PublishCoordinator(navigationController)
        publishCoordinator.parentCoordinator = self
        childCoordinator.append(publishCoordinator)
        publishCoordinator.start()
    }
    
    func popToRootViewController() {
        if let rootViewController = rootViewController {
            navigationController.popToViewController(rootViewController, animated: true)
        }
    }
    
    func didFinishChild(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinator.enumerated() {
            if coordinator === child {
                childCoordinator.remove(at: index)
                break
            }
        }
        popToRootViewController()
    }
}
