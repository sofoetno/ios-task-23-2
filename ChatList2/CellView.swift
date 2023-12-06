//
//  cellView.swift
//  ChatList2
//
//  Created by Sofo Machurishvili on 06.12.23.
//

import SwiftUI

struct CellView: View {
    
    let person: Person
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 10) {
            Image(person.profilePicture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(person.name)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                Text(person.lastMessage)
                    .foregroundColor(Color(red: 0.61, green: 0.61, blue: 0.61))
                    .font(.system(size: 12))
            }
            
            Spacer()
    
            Text(person.lastMassageDate)
                .foregroundColor(Color(red: 0.61, green: 0.61, blue: 0.61))
                .font(.system(size: 12))

        }
        
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(Color.customBackground)
    }
}

#Preview {
    CellView(person:  Person(name: "Francisco Miles", lastMessage: "I went there yesterday", profilePicture: "51", lastMassageDate: "18:14"))
}
