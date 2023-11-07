//
//  NavigationManager.swift
//  codeNam
//
//  Created by Rinoy Francis on 07/11/2023.
//

import Foundation
import UIKit

protocol UIViewControllerFactory {
    func createViewController(screen : Screens) -> UIViewController
}

class NavigationManager: UIViewControllerFactory {
    func createViewController(screen: Screens) -> UIViewController {
        switch screen {
        case .loginViewController:
            let storyBoard: UIStoryboard = UIStoryboard(name: StoryBoard.Main.rawValue, bundle: nil)
            return storyBoard.instantiateViewController(withIdentifier: Screens.loginViewController.rawValue) as! LoginViewController
        case .employeeListViewController:
            let storyBoard: UIStoryboard = UIStoryboard(name: StoryBoard.Main.rawValue, bundle: nil)
            return storyBoard.instantiateViewController(withIdentifier: Screens.employeeListViewController.rawValue) as! EmployeeListViewController
        }
    }
}
