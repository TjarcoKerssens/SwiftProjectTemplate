//
//  ProductTableDataSource.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 12/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

class ProductTableManager: NSObject, UITableViewDataSource, UITableViewDelegate {
    var products = [ProductViewModel]()
    weak var coordinator: MainCoordinator?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ProductCell.instantiate(tableView, indexPath: indexPath)
        cell.productViewModel = products[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.showProduct(products[indexPath.row])
    }
}
