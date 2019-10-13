//
//  MainTabBarController.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

/**
 The main navigation controller of the application. It holds the coordinators for the different application flows
 */
class MainTabBarController: UITabBarController {
    
    /* Initialize the coordinators. For each tab, define a new coordinator.  */
    let main = MainCoordinator(navigationController: UINavigationController())
    let secondary = SecondaryCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Start the coordinators to launch the first ViewController for each tab
        main.start()
        secondary.start()
        
        // Set the root of each tab to the navigigationcontroller of that flow
        viewControllers = [main.navigationController, secondary.navigationController]
    }
}
