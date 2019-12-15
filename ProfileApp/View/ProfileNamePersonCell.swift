//
//  ProfileNamePersonCell.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/14/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import UIKit

class ProfileNamePersonCell: UITableViewCell {
    
    @IBOutlet weak var profileImageview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    static var identifier = "ProfileNamePersonCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        self.profileImageview.layer.cornerRadius = self.profileImageview.layer.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.profileImageview.layer.borderWidth = 5
        self.profileImageview.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        // Configure the view for the selected state
    }
    
    func setupCell(item: ProfileViewModelItemProtocol) {
        // cast the ProfileViewModelItem to appropriate item type
        guard let item = item as? ProfileViewModelNamePictureItem else {
            return
        }
        self.nameLabel.text = item.userName
        self.profileImageview.image = UIImage(named: item.pictureUrl)
    }

}
