//
//  ProfileViewModelEmailItem.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/13/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

class ProfileViewModelEmailItem {
    var email: String
    
    init(email: String) {
       self.email = email
    }
}

extension ProfileViewModelEmailItem: ProfileViewModelItemProtocol {
    var type: ProfileViewModelItemType {
        return .email
    }
    
    var sectionTitle: String {
        return "✉️ Email"
    }
    
    var rowCount: Int {
        return 1
    }

}
