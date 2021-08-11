//
//  DataManager.swift
//  ContactsSwiftUI
//
//  Created by vtsyganov on 10.08.2021.
//

import Foundation

final class DataManager {
    
    static let shared = DataManager()
    
    private var persons: [Person] = []
    
    var firstNameList = ["Che", "Joseph", "Ed", "Dayton", "Callum", "Glynn", "Maxwell", "Sebestian", "Niall", "Kristopher", "Gwen", "Cathleen", "Abby", "Angeline", "Alyssa", "Bella", "Arielle", "Bronwyn", "Alex", "Katelynn"]
    
    var lastNameList = ["Martin", "Pascal", "Constantine","Taylor","Keanu","Trevon","Bernard","Ari","Aubrey","Brod","Cressida","Fia","Nila","Rosalina","Rosalina", "Clodagh","Lorena","Juno","Brinley","Cecilia","Hildegard"]
    
    var phoneNumberList = ["+1 203-423-6599", "+1 410-348-4810", "+1 415-494-2284", "+1 315-380-7840", "+1 534-441-2084", "+1 216-374-7677", "+1 212-758-2187", "+1 206-410-8510", "+1 318-263-0483", "+1 510-892-9929", "+1 206-641-2886", "+1 231-585-7628", "+1 228-967-9284", "+1 414-542-8348", "+1 206-811-1183", "+1 315-635-7898", "+1 240-772-2364", "+1 234-829-9419", "+1 423-488-5316", "+1 717-896-5558"]
    
    
    var emailList = ["miltchev@gmail.com", "curly@yahoo.ca", "szymansk@att.net", "cgarcia@yahoo.com", "bartlett@verizon.net", "johnbob@aol.com", "epeeist@optonline.net", "ianbuck@icloud.com", "rcwil@comcast.net", "jbarta@mac.com"]
    
    init() {
        generateRandomePersonList()
        printPersons()
    }
    
    func generateRandomePersonList() {
        while persons.count < 10 {
            let newPerson = randomPerson()
            
            persons.append(newPerson)
        }
    }
    
    func getPersons() -> [Person] {
        persons
    }
    
    func printPersons() {
        for person in persons {
            print(person)
        }
    }
    
    func randomDummyPerson() -> Person {
        let fName = randomeArrayElement(firstNameList)
        let lName = randomeArrayElement(lastNameList)
        let phone = randomeArrayElement(phoneNumberList)
        let email = randomeArrayElement(emailList)
        
        return Person(firstName: fName, lastName: lName, email: email, phoneNumber: phone)
    }
    
    private func randomPerson() -> Person {
        let fName = randomeArrayElement(firstNameList)
        let lName = randomeArrayElement(lastNameList)
        let phone = randomeArrayElement(phoneNumberList)
        let email = randomeArrayElement(emailList)
        
        firstNameList = firstNameList.removing(fName)
        lastNameList = lastNameList.removing(lName)
        phoneNumberList = phoneNumberList.removing(phone)
        emailList = emailList.removing(email)
        
        return Person(firstName: fName, lastName: lName, email: email, phoneNumber: phone)
    }
    
    private func randomeArrayElement(_ array: [String]) -> String {
        if let item = array.randomElement() {
            return item
        } else {
            return ""
        }
    }
    
}

extension Array where Element: Equatable {
    func removing(_ obj: Element) -> [Element] {
        return filter { $0 != obj }
    }
}
