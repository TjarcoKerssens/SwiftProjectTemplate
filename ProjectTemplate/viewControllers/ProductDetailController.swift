//
//  ProductDetailController.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 12/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

class ProductDetailController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    var product: ProductViewModel?

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView(){
        titleLabel.text = product?.title
        descriptionLabel.text = product?.description
        priceLabel.text = product?.price
    }
}
