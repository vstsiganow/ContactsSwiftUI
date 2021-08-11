//
//  SectionsContactList.swift
//  ContactsSwiftUI
//
//  Created by vtsyganov on 09.08.2021.
//

import SwiftUI

struct SectionsContactList: View {
    let persons = DataManager.shared.getPersons()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                List {
                    ForEach(persons) { person in
                        Section(header: Text(person.getFullName())) {
                            HStack {
                                Image(systemName: "phone")
                                    .foregroundColor(.blue)
                                Text("\(person.phoneNumber)")
                            }
                            
                            HStack {
                                Image(systemName: "tray")
                                    .foregroundColor(.blue)
                                Text("\(person.email)")
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Contact List"))
            .navigationBarTitleDisplayMode(.large)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SectionsContactList_Previews: PreviewProvider {
    static var previews: some View {
        SectionsContactList()
    }
}
