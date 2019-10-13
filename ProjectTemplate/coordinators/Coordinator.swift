//
//  Coordinator.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import Foundation
import UIKit

/**
 The coordinator pattern allows the seperation of the navigation from the ViewControllers. With this pattern, we can define a coordinator which is repsonsible for a flow inside the application. In this case, each tab of the UITabBarcontroller has it's own coordinator.
 
 The  root coordinators of the TabBar will be initiazed when the application launches. See the  `MainTabBarController` class and it's initialization in the AppDelegate.
*/
protocol Coordinator {
    /* Used when the navigationflow will be split up */
    var childCoordinators: [Coordinator] {get set}
    
    /* The controller that is used to show the ViewControllers */
    var navigationController: UINavigationController {get set}
    
    /* Setup the first screen of the flow */
    func start()
}
