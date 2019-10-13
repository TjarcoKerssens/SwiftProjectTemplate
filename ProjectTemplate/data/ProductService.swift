//
//  ProductService.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 12/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import Foundation

/**
 An empty example of a service which should be responsible for retrieving the model data from somewhere. This template does not make assumptions about your data source.
 */
class ProductService {
    
    /*
     Use the singleton pattern to share this service between instances. Might be efficient when the service has expensive
     setup logic with for example API interaction or CoreData.
     */
    static let shared = ProductService()
    
    /**
        Fetches all the producs from.. somewhere. (CoreData, API, etc.). For now, we just return some hardcoded products for the sake of example.
     */
    func fetchAllProducts(completionHandler: ([Product]) -> ()){
        let products = [
            Product(id: 0, name: "Apple", description: "A refreshing piece of fruit", price: 0.8),
            Product(id: 1, name: "Orange", description: "Fresh and sweet", price: 0.7),
            Product(id: 2, name: "Banana", description: "Sweet and creamy", price: 0.8),
            Product(id: 3, name: "Strawberries", description: "Sweet like the summer", price: 1.5),
        ]
        completionHandler(products)
    }
}
