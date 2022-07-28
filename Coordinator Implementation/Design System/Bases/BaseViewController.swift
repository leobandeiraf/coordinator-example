//
//  BaseViewController.swift
//  Coordinator Implementation
//
//  Created by Leonardo Bandeira on 23/06/22.
//

import UIKit

class BaseViewController: UIViewController {
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }
    
    // MARK: Setups
    private func setupNavigation() {
        navigationController?.navigationBar.isHidden = true
    }
}
