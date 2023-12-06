//
//  List.swift
//  ChatList2
//
//  Created by Sofo Machurishvili on 06.12.23.
//

import SwiftUI

struct Person: Hashable {
    let name: String
    let lastMessage: String
    let profilePicture: String
    let lastMassageDate: String
}

struct ChatList: View {
    var chatList: [Person] = []
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(chatList, id: \.self) { person in
                CellView(person: person)
                Divider()
                    .frame(height: 1)
                    .background(Color(red: 0.61, green: 0.61, blue: 0.61))
            }
        }
    }
}

#Preview {
    ChatList()
}
