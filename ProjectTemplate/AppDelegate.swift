//
//  AppDelegate.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /**
         We define the window ourself, giving us more control, rather than letting the app start from the StoryBoard. For this, you remove the reference in your target -> Deployment info -> Main interface. 
         */
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainTabBarController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

