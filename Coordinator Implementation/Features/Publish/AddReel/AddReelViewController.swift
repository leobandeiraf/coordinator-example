//
//  AddReelViewController.swift
//  Coordinator Implementation
//
//  Created by Leonardo Bandeira on 30/06/22.
//

import UIKit

final class AddReelViewController: BaseViewController {
    // MARK: Properties
    weak var coordinator: PublishCoordinator?
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Actions
    @IBAction func handlerBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func handlerPublishButton(_ sender: Any) {
        coordinator?.didFinishPublish()
    }
}
