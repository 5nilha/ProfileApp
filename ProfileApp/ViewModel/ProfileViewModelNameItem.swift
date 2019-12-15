//
//  ProfileViewModelNameItem.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/13/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

class ProfileViewModelNamePictureItem {
    
    var pictureUrl: String
    var userName: String
    
    init(pictureUrl: String, userName: String) {
       self.pictureUrl = pictureUrl
       self.userName = userName
    }
    
}

extension ProfileViewModelNamePictureItem: ProfileViewModelItemProtocol {
    var type: ProfileViewModelItemType {
        return .nameAndPicture
    }
    
    var sectionTitle: String {
        return "Main Info"
    }
    
    var rowCount: Int {
        return 1
    }

}
