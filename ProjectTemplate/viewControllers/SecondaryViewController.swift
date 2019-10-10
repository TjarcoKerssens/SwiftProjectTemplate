//
//  SecondaryViewController.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

class SecondaryViewController: UIViewController, Storyboarded {
    weak var coordinator: SecondaryCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        coordinator?.goToThird()
    }
}
