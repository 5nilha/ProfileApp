//
//  ProfileEmailCell.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/14/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import UIKit

class ProfileEmailCell: UITableViewCell {
    
    @IBOutlet weak var emailLabel: UILabel!
    
    static var identifier = "ProfileEmailCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(item: ProfileViewModelItemProtocol) {
        guard let item = item as? ProfileViewModelEmailItem else { return }
        self.emailLabel?.text = item.email
    }

}
