//
//  MainCoordinator.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

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
    
    func showProduct(_ product: ProductViewModel){
        let productVc = ProductDetailController.instantiate()
        productVc.product = product
        navigationController.pushViewController(productVc, animated: true)
    }
}
