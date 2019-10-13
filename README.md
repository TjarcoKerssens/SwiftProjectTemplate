# Swift Template
This project aims to give a simple, minimalistic template to get your Swift project started with some basic architecture set up. The template implements the following patterns:
* Coordinator pattern: delegate the control of the navigation to designated coordinators rather than having the `UIViewController` be responsible for navigation. 
* MVVM: Have seperate ViewModel classes to show data in views from model classes, rather than having the `UIViewController` translate between model and view. 
* Seperation of `UITableView` logic from the `UIViewController`. 

The template assumes the folowing structure:
* A root `UITabBarController` as main navigation
* Each tab has a different flow, managed by a `Coordinator` which has a `UINavigationController`. 

## Variations
There are three main branches in this project: 
* The master branch, containing a template using `Storyboard`.
* The SwiftUI branch, containing a template using SwiftUI. (can only be used from iOS 13)
* The UIVIew branch,  containing a template using `UIView` without Storyboard. 
