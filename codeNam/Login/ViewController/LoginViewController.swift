//
//  LoginViewController.swift
//  codeNam
//
//  Created by Rinoy Francis on 01/11/2023.
//

import UIKit

protocol LoginViewControllerProtocol {
    func goToEmployeeViewController()
}

class LoginViewController: UICustomScrollController {
    
    let customView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return view
    }()
    
    let customImageview: CustomImageView = {
        let customImageView = CustomImageView()
        customImageView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        customImageView.ImageVIew.image = UIImage(named: imageString)
        return customImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollViewContainer.addArrangedSubview(customView)
        self.scrollViewContainer.addArrangedSubview(customImageview)
        customImageview.delegate = self

    }
    
    private func goToEmployeeViewController() {
        let viewController = NavigationManager().createViewController(screen: .employeeListViewController)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

extension LoginViewController: CustomImageViewDelegate {
    func imagePressed() {
        self.goToEmployeeViewController()
    }

}
