//
//  ProductCell.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 12/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

/**
 An example implementation of a Cell. It holds a reference to a viewmodel to display it's data. 
 */
class ProductCell: UITableViewCell, StoryboardedCell {
    var productViewModel: ProductViewModel? {
        didSet {
           updateView()
        }
    }
    
    private func updateView(){
        self.textLabel?.text = productViewModel?.cellTitle
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
