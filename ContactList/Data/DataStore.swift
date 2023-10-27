//
//  DataStore.swift
//  ContactList
//
//  Created by Самир Джафари on 26.10.2023.
//

import Foundation

class DataStore {
    var names = [
        "Alice", "Bob", "Charlie", "David",
        "Eva", "Frank", "Grace", "Henry",
        "Ivy", "Jack", "Katherine", "Liam",
        "Mia", "Noah", "Olivia", "Peter",
        "Quinn", "Rachel", "Samuel", "Tara"
    ]
    
    var lastNames = [
        "Smith", "Johnson", "Brown", "Davis",
        "Miller", "Wilson", "Moore", "Taylor",
        "Anderson", "Thomas", "Jackson", "White",
        "Harris", "Martin", "Thompson", "Garcia",
        "Martinez", "Robinson", "Clark", "Rodriguez",
        "Lewis", "Lee", "Walker", "Hall",
        "Young", "King", "Wright", "Lopez",
        "Hill", "Scott", "Green", "Adams"
    ]
    
    var emails = [
        "example1@example.com", "user1234@gmail.com",
        "johndoe@yahoo.com", "test_email@hotmail.com",
        "random_email1@outlook.com", "swiftcoder@example.net",
        "emailuser345@gmail.com", "mailme@example.org",
        "email1234@gmail.com", "user_email@emailprovider.com",
        "test_email2@hotmail.com", "sampleemail@example.co",
        "myemail@gmail.com", "anotheruser@example.net",
        "emailtest@yahoo.com", "random.email123@outlook.com",
        "example_email@gmail.com", "swiftcoder2@example.org",
        "test.email@example.net"
    ]
    
    let phoneNumbers = [
        "+1 (123) 456-7890",
        "+44 20 1234 5678",
        "+61 2 9876 5432",
        "+33 1 23 45 67 89",
        "+49 30 12345678",
        "+81 3 1234 5678",
        "+55 11 1234-5678",
        "+39 02 1234 5678",
        "+7 495 123-45-67",
        "+86 10 1234 5678",
        "+91 11 1234 5678",
        "+31 20 123 4567",
        "+61 8 7654 3210",
        "+49 69 1234567",
        "+33 5 12 34 56 78",
        "+44 161 123 4567",
        "+55 21 1234-5678",
        "+64 3-123 4567",
        "+41 31 123 45 67",
        "+46 8-123 45 67 89",
        "+81 6 1234 5678",
        "+62 21 1234-5678",
        "+66 2 123 4567",
        "+63 2 123 4567",
        "+65 6 1234 5678",
        "+34 91 123 45 67",
        "+52 55 1234 5678",
        "+1 408-123-4567",
        "+82 2 1234 5678",
        "+7 812 123-45-67",
        "+52 33 1234 5678",
        "+49 211 1234567",
        "+46 8-123 45 67 90",
        "+1 818-123-4567"
    ].shuffled()
    
    static let shared = DataStore()
    
    private init() {}
}
