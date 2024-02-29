//
//  ActivitiesPage.swift
//  Splitter
//
//  Created by Nicolas Lukita on 2024/2/24.
//

import SwiftUI

struct ActivityPage: View {
    init() {
            let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor( .mint)]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor( .mint)]
        }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    Spacer().frame(height: 14)
                    TransactionActivityItem(
                        mode: .out,
                        subject: "You",
                        action: "paid",
                        object: "Luke",
                        actionDesc: "paid",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "Jason",
                        action: "paid",
                        object: "you",
                        actionDesc: "get back",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "John",
                        action: "added",
                        object: "\"Category\"",
                        actionDesc: "owed",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "You",
                        action: "added",
                        object: "\"Settle all balance\"",
                        actionDesc: "get back",
                        action2: "in",
                        object2: "\"Weekend trip\"",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "You",
                        action: "paid",
                        object: "Luke",
                        actionDesc: "paid",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "Jason",
                        action: "paid",
                        object: "you",
                        actionDesc: "get back",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "John",
                        action: "added",
                        object: "\"Category\"",
                        actionDesc: "owed",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "You",
                        action: "added",
                        object: "\"Settle all balance\"",
                        actionDesc: "get back",
                        action2: "in",
                        object2: "\"Weekend trip\"",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "You",
                        action: "paid",
                        object: "Luke",
                        actionDesc: "paid",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "Jason",
                        action: "paid",
                        object: "you",
                        actionDesc: "get back",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "John",
                        action: "added",
                        object: "\"Category\"",
                        actionDesc: "owed",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "You",
                        action: "added",
                        object: "\"Settle all balance\"",
                        actionDesc: "get back",
                        action2: "in",
                        object2: "\"Weekend trip\"",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "You",
                        action: "paid",
                        object: "Luke",
                        actionDesc: "paid",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "Jason",
                        action: "paid",
                        object: "you",
                        actionDesc: "get back",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "John",
                        action: "added",
                        object: "\"Category\"",
                        actionDesc: "owed",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "You",
                        action: "added",
                        object: "\"Settle all balance\"",
                        actionDesc: "get back",
                        action2: "in",
                        object2: "\"Weekend trip\"",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "You",
                        action: "paid",
                        object: "Luke",
                        actionDesc: "paid",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "Jason",
                        action: "paid",
                        object: "you",
                        actionDesc: "get back",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "John",
                        action: "added",
                        object: "\"Category\"",
                        actionDesc: "owed",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "You",
                        action: "added",
                        object: "\"Settle all balance\"",
                        actionDesc: "get back",
                        action2: "in",
                        object2: "\"Weekend trip\"",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "You",
                        action: "paid",
                        object: "Luke",
                        actionDesc: "paid",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "Jason",
                        action: "paid",
                        object: "you",
                        actionDesc: "get back",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .out,
                        subject: "John",
                        action: "added",
                        object: "\"Category\"",
                        actionDesc: "owed",
                        value: 196.00,
                        date: Date()
                    )
                    Divider()
                    TransactionActivityItem(
                        mode: .in,
                        subject: "You",
                        action: "added",
                        object: "\"Settle all balance\"",
                        actionDesc: "get back",
                        action2: "in",
                        object2: "\"Weekend trip\"",
                        value: 196.00,
                        date: Date()
                    )
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
            }.navigationTitle("Recent Activities")
        }
    }
}

#Preview {
    ActivityPage()
}
