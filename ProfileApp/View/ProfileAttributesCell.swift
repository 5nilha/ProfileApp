//
//  ProfileAttributesCell.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/14/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import UIKit

class ProfileAttributesCell: UITableViewCell {
    
    @IBOutlet weak var attributeKeyLabel: UILabel!
    @IBOutlet weak var attributeValueLabel: UILabel!
    
    static var identifier = "ProfileAttributesCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(item: ProfileViewModelItemProtocol, index: Int) {
        guard let item = item as? ProfileViewModelAttributeItem else { return }
        let attributes = item.attributes
        attributeKeyLabel?.text = attributes[index].key
        attributeValueLabel?.text = attributes[index].value
    }
}
