//
//  TabBarControllerViewController.swift
//  ContactList
//
//  Created by Самир Джафари on 26.10.2023.
//

import UIKit

final class TabBarControllerViewController: UITabBarController {
    
    var personList: [Person] = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let personListVC = $0 as? PersonListViewController {
                personListVC.personList = personList
            } else if let contactListVC = $0 as? ContactListViewController {
                contactListVC.personList = personList
            }
        }
    }

}
