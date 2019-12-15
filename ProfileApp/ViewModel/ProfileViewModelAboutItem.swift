//
//  ProfileViewModelAboutItem.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/13/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

class ProfileViewModelAboutItem {
    
    var about: String

    init(about: String) {
        self.about = about
    }
}

extension ProfileViewModelAboutItem: ProfileViewModelItemProtocol {
    
    var type: ProfileViewModelItemType {
        return .about
    }
    
    var sectionTitle: String {
        return "About"
    }
    
    var rowCount: Int {
        return 1
    }

}
