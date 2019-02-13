//
//  AppDelegate.swift
//  Actionable
//
//  Created by Connor Neville on 02/13/2019.
//  Copyright (c) 2019 Rightpoint. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        window.rootViewController = TableViewController()
        window.makeKeyAndVisible()
        self.window = window
        return true
    }

}

