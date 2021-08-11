//
//  HomeView.swift
//  ContactsSwiftUI
//
//  Created by vtsyganov on 09.08.2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        TabView {
            ContactList()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            
            SectionsContactList()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
        
    }
}

struct CHomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
