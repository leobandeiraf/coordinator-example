//
//  PublishCoordinator.swift
//  Coordinator Implementation
//
//  Created by Leonardo Bandeira on 29/06/22.
//

import UIKit

class PublishCoordinator: Coordinator {
    var navigationController: UINavigationController
    var parentCoordinator: Coordinator?
    var childCoordinator = [Coordinator]()
    var rootViewController: UIViewController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = ReelsViewController()
        viewController.coordinator = self
        rootViewController = viewController
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToAddReel() {
        let viewController = AddReelViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func didFinishPublish() {
        (parentCoordinator as? HomeCoordinator)?.didFinishChild(self)
        parentCoordinator = nil
        rootViewController = nil
    }
}
