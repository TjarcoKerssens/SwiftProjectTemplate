//
//  MainController.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

/**
 The first tab of the template application. Feel free to remove or rename `UITableView` and the `ProductTableManager`. This template assumes that the coordinator delegates:
 - Navigation (with the coordinators)
 - Table management (with the `ProductTableManager`, which impements `UITableViewDataSource` and `UITableViewDelegate`
 - Any aditional displaying of model data to ViewModels. Not relevant in this case, but look at `ProductDetailController` for an example. (MVVM pattern)
 */
class MainController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    var productManager = ProductTableManager()
    
    @IBOutlet weak var productTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* The productmanager gets a weak reference to the coordinator to be able to show product details */
        productManager.coordinator = coordinator
        
        /* The productmanager handles data and interaction with the `UITableView`. In more massive implementations, one could choose to
           Split this up into seperate classes for data and interaction. */
        productTable.dataSource = productManager
        productTable.delegate = productManager
        
        /* Load the data from.. somewhere. This template does not make assumptions about datasource. See the `ProductService` class. */
        getProducts()
    }
    
    private func getProducts(){
        ProductService.shared.fetchAllProducts { (products) in
            productManager.products = products.map {ProductViewModel(product: $0)}
            productTable.reloadData()
        }
    }
}
