//
//  HomeCoordinator.swift
//  CoordinatorBasics
//
//  Created by Malek on 5/16/20.
//  Copyright © 2020 Malek. All rights reserved.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    //1
    private let window: UIWindow
    private let rootViewController: UINavigationController
    //2
    init(window: UIWindow) {
        self.window = window
        self.rootViewController = UINavigationController()
    }
    //3
    func start() {
        window.rootViewController = rootViewController
        let homeViewController = HomeViewController(nibName: nil, bundle: nil)
        homeViewController.moveToNextScreenHandler = {[weak self] in
            guard let rootViewController = self?.rootViewController else {
                fatalError("rootViewController is nil")
            }
            let coordinator = DetailsCoordinator(presentingViewController: rootViewController)
            coordinator.start()
        }
        rootViewController.pushViewController(homeViewController, animated: true)
        window.makeKeyAndVisible()
    }
}
