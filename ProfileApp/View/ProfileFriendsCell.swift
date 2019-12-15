//
//  ProfileFriendsCell.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/14/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import UIKit

class ProfileFriendsCell: UITableViewCell {
    
    @IBOutlet weak var friendPicture: UIImageView!
    @IBOutlet weak var friendName: UILabel!
    
    static var identifier = "ProfileFriendsCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.friendPicture.layer.cornerRadius = self.friendPicture.layer.frame.height / 2
        self.friendPicture.layer.borderColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        self.friendPicture.layer.borderWidth = 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupCell(item: ProfileViewModelItemProtocol, index: Int) {
        guard let item = item as? ProfileViewModelFriendsItem else { return }
        let friends = item.friends
        self.friendName?.text = friends[index].name
        self.friendPicture?.image = UIImage(named: friends[index].pictureUrl ?? "")
    }
}
