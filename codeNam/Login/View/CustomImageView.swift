//
//  CustomImageView.swift
//  codeNam
//
//  Created by Rinoy Francis on 29/10/2023.
//

import UIKit

protocol CustomImageViewDelegate {
    func imagePressed()
}

class CustomImageView: UIView {
    
    private let nibName = "CustomImageView"
    
    @IBOutlet weak var ImageVIew: UIImageView!
    @IBOutlet weak var contentView: UIView!
    public var delegate: CustomImageViewDelegate?
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    private func xibSetup() {
        contentView = self.loadViewFromNib(nibName: nibName)
        ImageVIew.isUserInteractionEnabled = true
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedMap))
        ImageVIew.addGestureRecognizer(gestureRecognizer)
        addSubview(contentView)
    }
    
    @objc func tappedMap(sender: UITapGestureRecognizer) {
        delegate?.imagePressed()
    }
    
}
