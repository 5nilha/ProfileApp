//
//  ViewController.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/12/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var profileViewModel: ProfileViewModel!
    
    var cellIdentifiers = ["ProfileNamePersonCell", "ProfileAboutCell", "ProfileEmailCell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        profileViewModel = ProfileViewModel()
        self.tableView.delegate = profileViewModel
        self.tableView.dataSource = profileViewModel
        self.tableView.rowHeight = UITableView.automaticDimension
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return profileViewModel.numberOfSections(in: tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileViewModel.tableView(tableView, numberOfRowsInSection: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return profileViewModel.tableView(tableView, cellForRowAt: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return profileViewModel.tableView(tableView, heightForRowAt: indexPath)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return profileViewModel.tableView(tableView, viewForHeaderInSection: section)
    }
}
