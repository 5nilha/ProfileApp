//
//  ProfileViewModel.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/13/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import UIKit

class ProfileViewModel: NSObject {
    var items = [ProfileViewModelItemProtocol]()
    
    override init() {
        super.init()
        
        guard let data = DataService.dataFromFile("ServerData"),
            let profile = Profile(data: data) else {
                return
        }
        if let name = profile.fullname,
            let pictureUrl = profile.pictureURL {
            let nameAndPictureItem = ProfileViewModelNamePictureItem(pictureUrl: pictureUrl, userName: name)
            items.append(nameAndPictureItem)
        }
        
        if let about = profile.about {
            let aboutItem = ProfileViewModelAboutItem(about: about)
            items.append(aboutItem)
        }
        
        if let email = profile.email {
            let emailItem = ProfileViewModelEmailItem(email: email)
            items.append(emailItem)
        }
        
        // we only need attributes item if attributes not empty
        let attributes = profile.profileAttributes
        if !attributes.isEmpty {
            let attributesItem = ProfileViewModelAttributeItem(attributes: attributes)
            items.append(attributesItem)
        }
        
        // we only need friends item if friends not empty
        let friends = profile.friends
        if !friends.isEmpty {
            let friendsItem = ProfileViewModelFriendsItem(friends: friends)
            items.append(friendsItem)
        }
    }
    
    /* the items to be showed on tableview will be append in the order we want to show them. To add, remove or reorder the items, we only modify the order we append each item*/

}

extension ProfileViewModel: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.section]
        
        switch item.type {
        case .nameAndPicture:
            let cell = tableView.dequeueReusableCell(withIdentifier: ProfileNamePersonCell.identifier, for: indexPath) as! ProfileNamePersonCell
            cell.setupCell(item: item)
            return cell
        case .about:
            let cell = tableView.dequeueReusableCell(withIdentifier: ProfileAboutCell.identifier, for: indexPath) as! ProfileAboutCell
            cell.setupCell(item: item)
            return cell
        case .email:
            let cell = tableView.dequeueReusableCell(withIdentifier: ProfileEmailCell.identifier, for: indexPath) as! ProfileEmailCell
            cell.setupCell(item: item)
            return cell
        case .attribute:
            let cell = tableView.dequeueReusableCell(withIdentifier: ProfileAttributesCell.identifier, for: indexPath) as! ProfileAttributesCell
            cell.setupCell(item: item, index: indexPath.row)
            return cell
        case .friend:
            let cell = tableView.dequeueReusableCell(withIdentifier: ProfileFriendsCell.identifier, for: indexPath) as! ProfileFriendsCell
            cell.setupCell(item: item, index: indexPath.row)
            return cell
        default:
            // return the default cell if none of above succeed
            return UITableViewCell()
        }
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let item = items[section]
//        if item.rowCount > 0 {
//            return "   \(items[section].sectionTitle)"
//        }
//        return nil
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: tableView.layer.frame.width, height: 20)))
        headerView.backgroundColor = #colorLiteral(red: 0, green: 0.3910211027, blue: 0.2461545467, alpha: 1)
        
        let sectionTitle = UILabel(frame: CGRect(x: 20, y: 5, width: headerView.layer.frame.width, height: 20))
        sectionTitle.text = "\(items[section].sectionTitle)"
        sectionTitle.textColor = .white
        sectionTitle.font = .systemFont(ofSize: 12, weight: .medium)
        sectionTitle.clipsToBounds = true
        headerView.clipsToBounds = true
        headerView.addSubview(sectionTitle)
        return headerView
    }
    
    
}

extension ProfileViewModel: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let item = self.items[indexPath.section]
        let minimumHeight = CGFloat(50.0)
        
        switch item.type {
        case .nameAndPicture:
            return 200
        case .about:
            return UITableView.automaticDimension
        case .email:
            return minimumHeight
        case .friend:
            return minimumHeight + 20
        case .attribute:
            return minimumHeight
        }
    }
}
