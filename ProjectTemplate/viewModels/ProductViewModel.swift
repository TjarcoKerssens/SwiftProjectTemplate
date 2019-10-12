//
//  ProductViewModel.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 12/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import Foundation

class ProductViewModel {
    var product: Product
    
    var title: String {
        get {
            return "Information for: \(product.name)"
        }
    }
    
    var cellTitle: String {
        get {
            return product.name
        }
    }
    
    var description: String {
        get {
            return "Description: \(product.description)"
        }
    }
    
    var price: String {
        get {
            return ProductViewModel.priceFormatter.string(from: product.price as NSNumber) ?? "No price available"
        }
    }
    
    static var priceFormatter: NumberFormatter {
        get {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.usesGroupingSeparator = true
            formatter.locale = Locale.current
            return formatter
        }
    }
    

    
    init(product: Product) {
        self.product = product
    }
}
