//
//  Coordinator.swift
//  Coordinator Implementation
//
//  Created by Leonardo Bandeira on 23/06/22.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var parentCoordinator: Coordinator? { get set }
    var childCoordinator: [Coordinator] { get set }
    var rootViewController: UIViewController? { get set }
    
    func start()
}
