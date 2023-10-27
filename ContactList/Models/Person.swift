//
//  Person.swift
//  ContactList
//
//  Created by Самир Джафари on 23.10.2023.
//

import Foundation

struct Person {
    let phone: String
    let email: String
    
    let name: String
    let lastName: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}
