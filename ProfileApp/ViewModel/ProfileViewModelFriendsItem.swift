//
//  ProfileViewModelFriendsItem.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/13/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

class ProfileViewModelFriendsItem {
    
    var friends: [Friend]
    
    init(friends: [Friend]) {
        self.friends = friends
    }
}

extension ProfileViewModelFriendsItem: ProfileViewModelItemProtocol {
    var type: ProfileViewModelItemType {
        return .friend
    }
    
    var sectionTitle: String {
        return "🧍‍♀️🧍🏽‍♂️🧍🏼 Friends"
    }
    
    var rowCount: Int {
        return friends.count
    }
}
