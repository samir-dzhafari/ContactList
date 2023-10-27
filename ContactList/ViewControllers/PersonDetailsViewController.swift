//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Самир Джафари on 27.10.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = person.fullName
        setupLabels()
    }

}

extension PersonDetailsViewController {
    private func setupLabels() {
        phoneNumberLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "E-Mail: \(person.email)"
    }
}
