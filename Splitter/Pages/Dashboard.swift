//
//  HomePage.swift
//  Splitter
//
//  Created by Nicolas Lukita on 2024/2/24.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case friends
    case groups
    case activity
    case account
}

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 60, height: 60)
            .background(Color.mint)
            .clipShape(RoundedRectangle(cornerRadius: configuration.isPressed ? 24 : 20))
            .shadow(radius: configuration.isPressed ? 0 : 2)
            .scaleEffect(configuration.isPressed ? 0.99 : 1)
    }
}

struct Dashboard: View {
    @State private var selectedTab: Tab = .account
    @State var isButtonPressed = false
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView{
                FriendsPage()
                    .tabItem { Label("Friends", systemImage: "person.2") }
                    .tag(Tab.friends)
                GroupsPage()
                    .tabItem { Label("Groups", systemImage: "person.2.circle") }
                    .tag(Tab.groups)
                Spacer()
                ActivityPage()
                    .tabItem { Label("Activity", systemImage:"chart.xyaxis.line") }
                    .tag(Tab.activity)
                AccountPage()
                    .tabItem { Label("Accounts", systemImage: "person.crop.circle") }
                    .tag(Tab.account)
            }
            .accentColor(.mint)
            Button {
                isButtonPressed.toggle()
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
            }.buttonStyle(ScaleButtonStyle())
        }
    }
}

#Preview {
        Dashboard()
}
