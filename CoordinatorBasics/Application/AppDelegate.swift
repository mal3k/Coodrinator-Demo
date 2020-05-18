//
//  AppDelegate.swift
//  CoordinatorBasics
//
//  Created by Malek on 5/15/20.
//  Copyright © 2020 Malek. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    var homeCoordinator: HomeCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //1
        let window = UIWindow(frame: UIScreen.main.bounds)
        let homeCoordinator = HomeCoordinator(window: window)
        self.window = window
        self.homeCoordinator = homeCoordinator
        //2
        homeCoordinator.start()
        return true
    }
}

