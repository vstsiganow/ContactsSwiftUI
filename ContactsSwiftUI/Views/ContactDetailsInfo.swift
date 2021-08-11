//
//  ContactDetailsInfo.swift
//  ContactsSwiftUI
//
//  Created by vtsyganov on 10.08.2021.
//

import SwiftUI

struct ContactDetailsInfo: View {
    var person: Person
    
    var body: some View {
        VStack {
            Spacer()
            
            Form {
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .trailing)
                    .padding([.leading, .trailing], 40)
                    .padding([.top, .bottom], 20)
                
                
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
        .navigationBarTitle(Text(person.getFullName()))
    }
}

struct ContactDetailsInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsInfo(person: DataManager.shared.randomDummyPerson())
    }
}
