//
//  TableViewController.swift
//  Project4
//
//  Created by Maksim Li on 07/10/2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    var websites = ["apple.com", "facebook.com", "hackingwithswift.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Choose a Website"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "WebsiteCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WebsiteCell", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedWebsite = websites[indexPath.row]
        
        let webVC = ViewController()
        webVC.selectedWebsite = selectedWebsite
        navigationController?.pushViewController(webVC, animated: true)
    }
    
}
