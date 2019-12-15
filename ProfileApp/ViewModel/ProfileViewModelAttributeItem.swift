//
//  ProfileViewModelAttributeItem.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/13/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

class ProfileViewModelAttributeItem {
    var attributes: [Attribute]
    
    init (attributes: [Attribute]) {
        self.attributes = attributes
    }
}

extension ProfileViewModelAttributeItem: ProfileViewModelItemProtocol {
    var type: ProfileViewModelItemType {
        return .attribute
    }
    
    var sectionTitle: String {
        return "📰 Attributes"
    }
    
    var rowCount: Int {
        return attributes.count
    }
}
