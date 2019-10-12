//
//  MainController.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

class MainController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    var productManager = ProductTableManager()
    
    @IBOutlet weak var productTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productManager.coordinator = coordinator
        productTable.dataSource = productManager
        productTable.delegate = productManager
        getProducts()
    }
    
    private func getProducts(){
        ProductService.shared.fetchAllProducts { (products) in
            productManager.products = products.map {ProductViewModel(product: $0)}
            productTable.reloadData()
        }
    }
}
