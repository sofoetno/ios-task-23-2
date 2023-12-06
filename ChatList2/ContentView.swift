//
//  ContentView.swift
//  ChatList2
//
//  Created by Sofo Machurishvili on 06.12.23.
//

import SwiftUI

extension Color {
    static let customBackground = Color(red: 0.2, green: 0.2, blue: 0.2)
}

struct ContentView: View {
    
    @State private var chatList = [
        Person(name: "Francisco Miles", lastMessage: "I went there yesterday", profilePicture: "51", lastMassageDate: "18:14"),
        Person(name: "Arlene Fisher", lastMessage: "IDK what else is there to do", profilePicture: "52", lastMassageDate: "22:31"),
        Person(name: "Darlene Hawkins", lastMessage: "No, I can't come tomorrow.", profilePicture: "53", lastMassageDate: "09:18"),
        Person(name: "Eduardo Mckinney", lastMessage: "Go to hell", profilePicture: "54", lastMassageDate: "Yesterday"),
        Person(name: "Aubrey Cooper", lastMessage: "I hope it goes well.", profilePicture: "55", lastMassageDate: "Friday"),
        Person(name: "Jorge Nguyen", lastMessage: "So, what's your plan this weekend?", profilePicture: "56", lastMassageDate: "Thursday"),
        Person(name: "Cody Cooper", lastMessage: "What's the progress on that task?", profilePicture: "57", lastMassageDate: "Tuesday"),
        Person(name: "Kristin Pena", lastMessage: "Yeah! You're right.", profilePicture: "58", lastMassageDate: "7/22/20"),
        Person(name: "Brandie Watson", lastMessage: "I went there yesterday", profilePicture: "59", lastMassageDate: "8/19/20"),
        Person(name: "Stella Henry", lastMessage: "Martinique", profilePicture: "60", lastMassageDate: "9/15/20")
    ]
    @State private var showAlert = false
    @State private var listForMemory = [Person]()
    
    var body: some View {
        Color.customBackground.edgesIgnoringSafeArea(.all)
        
        HStack {
            Text("Chat")
                .foregroundColor(.white)
                .font(.system(size: 17))
                .fontWeight(.semibold)
        }
        .background(Color.customBackground)
        .padding(.top, 10)
        
        
        ChatList(chatList: chatList)
            .background(Color.customBackground)
        
        HStack(alignment: .center) {
            Button {
                listForMemory = chatList
                chatList = []
                showAlert = true
            } label: {
                Text("Clear chat")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 50)
            }
            .background(Color(UIColor(red: 0.14, green: 0.15, blue: 0.38, alpha: 1)))
            .cornerRadius(6)
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Chat is Cleared"),
                    message: Text("Click the reset button to restore."),
                    primaryButton: .default(Text("OK")),
                    secondaryButton: .destructive(Text("Reset")) {
                        chatList = listForMemory
                    }
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
