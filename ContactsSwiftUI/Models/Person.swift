//
//  Person.swift
//  ContactsSwiftUI
//
//  Created by vtsyganov on 10.08.2021.
//

import Foundation


struct Person: Identifiable {
    var id: String = UUID().uuidString
    var firstName: String
    var lastName: String
    var email: String
    var phoneNumber: String
    
    func getFullName() -> String {
        "\(firstName) \(lastName)"
    }
}
