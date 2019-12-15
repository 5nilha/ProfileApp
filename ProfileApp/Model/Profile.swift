//
//  Profile.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/12/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

struct Profile {
    var fullname: String?
    var pictureURL: String?
    var email: String?
    var about: String?
    var friends = [Friend]()
    var profileAttributes = [Attribute]()
    
    init?(data: Data) {
        do {
            if let json = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves) as? [String : Any],
                let body = json["data"] as? [String : Any] {
                self.fullname = body["fullName"] as? String
                self.pictureURL = body["pictureUrl"] as? String
                self.about = body["about"] as? String
                self.email = body["email"] as? String
                
                if let friends = body["friends"] as? [[String : Any]] {
                    self.friends = friends.map { Friend(json: $0) }
                }
                
                if let profileAttributes = body["profileAttributes"] as? [[String : Any]] {
                    self.profileAttributes = profileAttributes.map { Attribute(json: $0) }
                }
            }
        } catch {
            print("Error deserializing JSON: \(error.localizedDescription)")
            return nil
        }
    }
    
    
    
}
