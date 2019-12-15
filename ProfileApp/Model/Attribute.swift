//
//  Attribute.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/12/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

struct Attribute {
    var key: String?
    var value: String?
    
    init(json: [String: Any]) {
       self.key = json["key"] as? String
       self.value = json["value"] as? String
    }
}
