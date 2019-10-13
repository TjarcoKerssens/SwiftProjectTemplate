//
//  MainCoordinator.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

/**
 This example coordinator controls the flow of the first tab in the `MainTabBarController`.
 In this example, it will initialize the MainController, which shows a list of products and define a function to show the details of a product.
 */
class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = MainController.instantiate()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        vc.tabBarItem.title = "First"
        navigationController.pushViewController(vc, animated: false)
    }
    /**
     In this example, the function is called when the user tabs a product cell in the `MainController`, but it can be called from anywhere in the flow to show product details
     */
    func showProduct(_ product: ProductViewModel){
        let productVc = ProductDetailController.instantiate()
        productVc.coordinator = self
        productVc.product = product
        navigationController.pushViewController(productVc, animated: true)
    }
}
