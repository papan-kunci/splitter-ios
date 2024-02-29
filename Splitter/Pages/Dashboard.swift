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
    case plus
    case activity
    case account
}

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 60, height: 60)
            .background(Color.mint)
            .clipShape(RoundedRectangle(cornerRadius: configuration.isPressed ? 24 : 20))
            .shadow(radius: configuration.isPressed ? 0 : 4)
            .scaleEffect(configuration.isPressed ? 0.99 : 1)
    }
}

struct TabBar: View {
    @Binding var selectedTab: Tab
    @State var isButtonPressed = false
    var body: some View {
        ZStack {
            HStack {
                ForEach(Tab.allCases, id:\.rawValue) { tab in
                    Spacer()
                    
                    if (tab == .plus) {
                        Spacer()
                    } else {
                        Text(tab.rawValue.prefix(3))
                            .fontWeight(tab == selectedTab ? .semibold : .regular)
                            .scaleEffect(tab == selectedTab ? 1.10 : 1.0)
                            .foregroundStyle(tab == selectedTab ? .blue : .gray)
                            .onTapGesture {
                                withAnimation(.easeIn(duration: 0.1)) {
                                    selectedTab = tab
                                }
                            }
                    }
                    
                    Spacer()
                }
            }
            .frame(width: nil, height: 45)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding(EdgeInsets(top: 6, leading: 0, bottom: 0, trailing: 0))
            
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

struct Dashboard: View {
    @State private var selectedTab: Tab = .account
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    FriendsPage()
                        .tag(Tab.friends)
                    GroupsPage()
                        .tag(Tab.groups)
                    ActivityPage()
                        .tag(Tab.activity)
                    AccountPage()
                        .tag(Tab.account)
                }
            }
            VStack {
                Spacer()
                TabBar(selectedTab: $selectedTab)
            }
        }
    }
}

struct OldStyleDashboard: View {
    @State private var selectedTab: Tab = .friends
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
    //    Dashboard()
    OldStyleDashboard()
}
