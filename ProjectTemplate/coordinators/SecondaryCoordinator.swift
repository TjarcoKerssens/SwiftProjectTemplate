//
//  SecondaryCoordinator.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

/**
 An example of an alternative coordinator for a different tab in the `MainTabBarController`.
 */
class SecondaryCoordinator: Coordinator {
    var childCoordinators =  [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = SecondaryViewController.instantiate()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        vc.tabBarItem.title = "Second"
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToThird(){
        let vc = ThirdViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
