//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Самир Джафари on 23.10.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var personList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.sectionHeaderTopPadding = 0.0
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.black
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactItem", for: indexPath)

        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.image = UIImage(systemName: indexPath.row == 0 ? "phone" : "tray")
        content.text = indexPath.row == 0 ? person.phone : person.email
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personList[section].fullName
    }

}
