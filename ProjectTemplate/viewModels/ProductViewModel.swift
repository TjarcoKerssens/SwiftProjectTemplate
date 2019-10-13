//
//  ProductViewModel.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 12/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import Foundation

/**
 A class responsible for translating between the `Product` model and the Views that display data to the user.
 This class is key in the MVVM pattern. Another way of delegating is to don't use a StoryBoard to style the Vvew and have this class interect with
 a custom View class, which will be shown in another branch of this template's git respository.
 */
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
    
    /**
     A shared formatatter for the price of the Product. Will only be initialized once when needed and reused after that. (try it out with breakpoints!)
     */
    static var priceFormatter: NumberFormatter  = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.usesGroupingSeparator = true
        formatter.locale = Locale.current
        return formatter
    }()
    

    
    init(product: Product) {
        self.product = product
    }
}
