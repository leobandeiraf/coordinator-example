//
//  FeedViewController.swift
//  Coordinator Implementation
//
//  Created by Leonardo Bandeira on 23/06/22.
//

import UIKit

final class FeedViewController: BaseViewController {
    // MARK: Properties
    weak var coordinator: HomeCoordinator?
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Actions
    @IBAction func handlerPublishSection(_ sender: Any) {
        coordinator?.goToPublish()
    }
}
