//
//  ReelsViewController.swift
//  Coordinator Implementation
//
//  Created by Leonardo Bandeira on 29/06/22.
//

import UIKit

final class ReelsViewController: BaseViewController {
    // MARK: Properties
    weak var coordinator: PublishCoordinator?
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Actions
    @IBAction func handlerBackButton(_ sender: Any) {
        coordinator?.didFinishPublish()
    }
    
    @IBAction func handlerAddReelButton(_ sender: Any) {
        coordinator?.goToAddReel()
    }
}
