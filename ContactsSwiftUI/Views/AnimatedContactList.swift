//
//  AnimatedContactList.swift
//  ContactsSwiftUI
//
//  Created by vtsyganov on 14.08.2021.
//

import SwiftUI

struct AnimatedContactList: View {
    let persons = DataManager.shared.getPersons()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                List(persons) { person in
                    //NavigationLink(person.getFullName(), destination: ContactDetailsInfo(person: person))
                    RowContactView(person: person)
                    
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle(Text("Contact List"))
        }
    }
}

struct AnimatedContactList_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedContactList()
    }
}
