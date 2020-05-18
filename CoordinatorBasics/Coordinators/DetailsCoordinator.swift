//
//  DetailsCoordinator.swift
//  CoordinatorBasics
//
//  Created by Malek on 5/18/20.
//  Copyright © 2020 Malek. All rights reserved.
//

import UIKit

public class DetailsCoordinator: Coordinator {
    
    //1
    private let presentingViewController: UINavigationController

    init(presentingViewController: UINavigationController) {
        self.presentingViewController = presentingViewController
    }
    //3
    func start() {
        let detailsViewController = DetailsViewController(nibName: nil, bundle: nil)
        presentingViewController.pushViewController(detailsViewController, animated: true)
    }
}
