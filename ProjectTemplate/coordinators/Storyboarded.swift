//
//  Storyboarded.swift
//  ProjectTemplate
//
//  Created by Tjarco Kerssens on 10/10/2019.
//  Copyright © 2019 TKDevelopment. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

/**
    Create the `UIViewController` from the Storyboard. It is important that the UIVIewController in Storyboard that
    represents this controller has the name of the controller as it's identifier.
    
    For example:  if class is set to MainViewController, Storyboard ID should also be set to MainViewController
 */
extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}

/**
 Creates a cell from the Storyboard by using a reference to the tableview. This can be called from the `cellForIndexPath` function in the TableManager.
 Rather than using a String as identifier, use the class name of the cell as a reuse indentifier in Storyboard to create the cell from there.
 
 For example: for the class `ProductCell` the cell's reuseidentfier should also be set to ProductCell
 */
protocol StoryboardedCell where Self: UITableViewCell{
    static func instantiate(_ tableView: UITableView, indexPath: IndexPath) -> Self
}

extension StoryboardedCell {
    static func instantiate(_ tableView: UITableView, indexPath: IndexPath) -> Self {
        let id = String(describing: self)
        return tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! Self
    }
}
