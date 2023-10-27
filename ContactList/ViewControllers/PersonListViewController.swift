//
//  PersonListViewController.swift
//  ContactList
//
//  Created by Самир Джафари on 23.10.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {

    var personList: [Person]!

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personItem", for: indexPath)
        
        let person = personList[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            guard let personDetailsVC = segue.destination as? PersonDetailsViewController else {
                return
            }
            personDetailsVC.person = sender as? Person
        }
    }

}
