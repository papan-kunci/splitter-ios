//
//  AccountPage.swift
//  Splitter
//
//  Created by Nicolas Lukita on 2024/2/24.
//

import SwiftUI

struct AccountPage: View {
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor( .mint)]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor( .mint)]
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, pinnedViews: [.sectionHeaders]) {
                    Section {
                        HStack {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.mint)
                                        .frame(width: 60, height: 60)
                                    Image(systemName: "person")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                                ZStack(alignment: .center) {
                                    Image(systemName: "camera.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 17, height: 15)
                                        .foregroundColor(.white)
                                    Image(systemName: "camera.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 15, height: 13)
                                        .foregroundColor(.black)
                                }
                            }
                            VStack(alignment: .leading) {
                                Text("Nicolas Lukita")
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                Text("nicolas.lukita@gmail.com")
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                    .font(.system(size: 11))
                                    .foregroundColor(.gray)
                            }
                            .padding(.leading, 10)
                            Spacer()
                            AccountRightArrow()
                        }
                        .padding(.vertical, 4)
                        Divider().opacity(0.5)
                        AccountListItem(label: "Scan code", icon: "qrcode")
                        Divider().opacity(0.5)
                        AccountListItem(label: "Get pro version", icon: "suit.diamond.fill", iconColor: .yellow)
                    } header: {
                        AccountHeader(label: "Settings")
                    }
                    Section {
                        AccountListItem(label: "Notification", icon: "bell")
                        Divider().opacity(0.5)
                        AccountListItem(label: "Passcode", icon: "key")
                    } header: {
                        AccountHeader(label: "Preferences")
                    }
                    Section {
                        AccountListItem(label: "Rate us", icon: "star")
                        Divider().opacity(0.5)
                        AccountListItem(label: "Contact us", icon: "phone.bubble")
                    } header: {
                        AccountHeader(label: "Feedback")
                    }
                }
                .padding(.horizontal, 16)
            }.navigationTitle("Account")
        }
    }
}

#Preview {
    AccountPage()
}
