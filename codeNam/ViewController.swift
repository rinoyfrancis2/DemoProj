//
//  ViewController.swift
//  codeNam
//
//  Created by Rinoy Francis on 28/10/2023.
//

import UIKit

class ViewController: UICustomScrollController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.backgroundColor = .red
        self.scrollViewContainer.addArrangedSubview(customImageview)
    }
    
    let customImageview: CustomImageView = {
        let imageView = CustomImageView()
        imageView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        imageView.backgroundColor = .red
        return imageView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        //
    }
}

