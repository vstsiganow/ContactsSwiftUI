//
//  ContactList.swift
//  ContactsSwiftUI
//
//  Created by vtsyganov on 09.08.2021.
//

import SwiftUI

struct ContactList: View {
    let persons = DataManager.shared.getPersons()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                List(persons) { person in
                    NavigationLink(person.getFullName(), destination: ContactDetailsInfo(person: person))
                    
                }
                .listStyle(InsetGroupedListStyle())
            }
            .navigationBarTitle(Text("Contact List"))
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
