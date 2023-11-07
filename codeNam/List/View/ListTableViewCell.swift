//
//  ListTableViewCell.swift
//  codeNam
//
//  Created by Rinoy Francis on 04/11/2023.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var backGroundView: UIView!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.avatarImageView.layer.cornerRadius = 40
        self.avatarImageView.layer.borderWidth = 3
        self.avatarImageView.layer.borderColor = UIColor.systemBackground.cgColor
        self.avatarImageView.layer.masksToBounds = true
        
        self.backGroundView.layer.cornerRadius = 15
        self.backGroundView.layer.borderWidth = 2
        self.backGroundView.layer.borderColor = UIColor.systemBackground.cgColor
        self.backGroundView.backgroundColor = imageViewBackgroundColor
        self.backGroundView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
