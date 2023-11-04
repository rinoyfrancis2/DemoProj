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
    
    let viewBorderColor = UIColor(red:0, green:0, blue:0, alpha:0.3)
    let imageViewBorderColor = UIColor(red:10/255, green:200/255, blue:76/255, alpha:0.3)

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        self.avatarImageView.layer.cornerRadius = 30
        self.avatarImageView.layer.borderWidth = 2
        self.avatarImageView.layer.borderColor = imageViewBorderColor.cgColor
        self.avatarImageView.layer.masksToBounds = true
        
        self.backGroundView.layer.cornerRadius = 30
        self.backGroundView.layer.borderWidth = 2
        self.backGroundView.layer.borderColor = viewBorderColor.cgColor
        self.backGroundView.layer.masksToBounds = true
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
