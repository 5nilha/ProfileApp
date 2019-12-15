//
//  DataModelItem.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/13/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

protocol ProfileViewModelItemProtocol {
    var type: ProfileViewModelItemType { get }
    var rowCount: Int { get }
    var sectionTitle: String { get }
}

extension ProfileViewModelItemProtocol {
    var rowCount: Int {
        return 0
    }
}
