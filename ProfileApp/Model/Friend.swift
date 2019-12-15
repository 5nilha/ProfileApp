//
//  Friend.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/12/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

struct Friend {
    var name: String?
    var pictureUrl: String?
    
    init(json: [String : Any]) {
        self.name = json["name"] as? String
        self.pictureUrl = json["pictureUrl"] as? String
    }
    
}
