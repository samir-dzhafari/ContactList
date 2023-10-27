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
    
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        
        let dataStore = DataStore.shared
        
        let maxIndex = min(
            dataStore.names.count,
            dataStore.lastNames.count,
            dataStore.emails.count,
            dataStore.phoneNumbers.count
        ) - 1
        
        (0...maxIndex).forEach {
            let newPerson = Person(
                phone: dataStore.phoneNumbers[$0],
                email: dataStore.emails[$0],
                name: dataStore.names[$0],
                lastName: dataStore.lastNames[$0]
            )
            
            persons.append(newPerson)
        }
        
        return persons
    }
}
