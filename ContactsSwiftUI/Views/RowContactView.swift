//
//  RowContactView.swift
//  ContactsSwiftUI
//
//  Created by vtsyganov on 14.08.2021.
//

import SwiftUI

struct RowContactView: View {
    @State var showDetails = false
    
    var person: Person
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    showDetails.toggle()
                }
            }) {
                HStack {
                    Text(person.getFullName())
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "chevron.left.circle")
                        .rotationEffect(.degrees(showDetails ? -90 : 0))
                        .foregroundColor(.blue)
                }
                .padding([.leading, .trailing], 20)
            }
            
            if showDetails {
                HStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75, alignment: .trailing)
                        .padding([.leading, .trailing], 10)
                        .padding([.top, .bottom], 10)
                    
                    VStack(alignment: .leading, spacing: 10) {
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
                .transition(
                    AnyTransition.move(edge: .top).combined(with: .opacity)
                )
                .opacity(showDetails ? 1 : 0)
            }
        }
    }
}

struct ShortContactView_Previews: PreviewProvider {
    static var previews: some View {
        RowContactView(showDetails: true, person: DataManager.shared.randomDummyPerson())
    }
}
