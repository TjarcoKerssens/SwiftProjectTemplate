//
//  Product.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 12/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import Foundation

/**
 Very basic example model, while `Codable` is not used in this template, it should be used when translating from JSON or another serialized format. 
 */
struct Product: Codable {
    var id: Int
    var name: String
    var description: String
    var price: Double
}
