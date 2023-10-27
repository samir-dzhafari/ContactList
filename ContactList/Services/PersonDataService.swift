//
//  PersonDataService.swift
//  ContactList
//
//  Created by Самир Джафари on 26.10.2023.
//

import Foundation

class PersonDataService {
    
    private(set) var persons: [Person] = []
    
    static let shared = PersonDataService()
    
    private init() {
        personsFactory()
    }
    
    private func personsFactory() {
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
    }
    
    func move(at index: Int, to destination: Int) {
        let current = persons.remove(at: index)
        persons.insert(current, at: destination)
    }
}
