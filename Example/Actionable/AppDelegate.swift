//
//  AppDelegate.swift
//  Actionable
//
//  Created by Connor Neville on 02/13/2019.
//  Copyright (c) 2019 Rightpoint. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TableViewControllerDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        let rootVC = TableViewController()
        rootVC.delegate = self
        window.rootViewController = rootVC
        window.makeKeyAndVisible()
        self.window = window
        return true
    }

    func tableViewController(_ vc: TableViewController, didNotify action: TableViewController.Action) {
        switch action {
        case let .didTapCell(row):
            print("AppDelegate received a delegate message that cell #\(row) was tapped")
        }
    }

}

