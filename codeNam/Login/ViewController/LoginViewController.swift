//
//  LoginViewController.swift
//  codeNam
//
//  Created by Rinoy Francis on 01/11/2023.
//

import UIKit

class LoginViewController: UICustomScrollController {
    
    let loginImageString: String = "Login"
    let storyboardId: String = "EmployeeListViewController"
    let storyBoardName: String = "Main"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollViewContainer.addArrangedSubview(customView)
        self.scrollViewContainer.addArrangedSubview(customImageview)
        customImageview.delegate = self

    }
    
    let customView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return view
    }()
    
    let customImageview: CustomImageView = {
        let customImageView = CustomImageView()
        customImageView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        customImageView.ImageVIew.image = UIImage(named: "Login")
        return customImageView
    }()
}

extension LoginViewController: CustomImageViewDelegate {
    func imagePressed() {
        let storyBoard: UIStoryboard = UIStoryboard(name: storyBoardName, bundle: nil)
        let employeeListViewController = storyBoard.instantiateViewController(withIdentifier: storyboardId) as! EmployeeListViewController
        self.navigationController?.pushViewController(employeeListViewController, animated: true)
    }

}
