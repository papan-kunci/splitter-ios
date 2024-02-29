//
//  ActivityListItem.swift
//  Splitter
//
//  Created by Nicolas Lukita on 2024/2/26.
//

import SwiftUI

func formatDateTime(date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMM d, yyy 'at' h:mma"
    return formatter.string(from: date)
}

enum ActivityMode {
    case `in`
    case out
}

func getColor(mode: ActivityMode) -> Color {
    switch mode {
    case .in: return Color.green
    case .out: return Color.red
    }
}


struct TransactionActivityItem: View {
    let mode: ActivityMode
    let subject: String
    let action: String
    let action2: String?
    let actionDesc: String
    let object: String
    let object2: String?
    let value: Double
    let date: Date
    let formattedDate: String
    
    init(mode: ActivityMode, subject: String, action: String,object: String, actionDesc: String, action2: String? = nil, object2: String? = nil, value: Double, date: Date) {
        self.mode = mode
        self.subject = subject
        self.action = action
        self.action2 = action2
        self.actionDesc = actionDesc
        self.object = object
        self.object2 = object2
        self.value = value
        self.date = date
        self.formattedDate = formatDateTime(date: date)
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 14) {
            ZStack(alignment: .bottomTrailing) {
                Image(systemName: "dollarsign.square")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 5))
                    .foregroundColor(getColor(mode: mode))
                ZStack {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Circle()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.yellow)
                        .overlay {
                            Image(systemName: "person.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 8, height: 8)
                                .foregroundColor(.black)
                        }
                }
            }
            VStack(alignment:.leading) {
                Text(.init("**\(subject)** \(action) **\(object)** \(action2.map { " \($0)" } ?? "") \(object2.map { " **\($0)**" } ?? "")"))
                    .lineLimit(3)
                    .truncationMode(.tail)
                
                Text("You \(actionDesc) $\(String(format: "%.2f", value))")
                    .fontWeight(.medium)
                    .foregroundColor(getColor(mode: mode))
                
                Spacer().frame(height: 3)
                Text(formattedDate)
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
            }
            .frame(alignment: .top)
            Spacer(minLength: 0)
        }
        .frame(width: .infinity, alignment: .leading)
    }
}

#Preview {
    VStack(spacing: 20) {
        TransactionActivityItem(
            mode: .out,
            subject: "You",
            action: "paid",
            object: "Daniel",
            actionDesc: "paid",
            value: 196.00,
            date: Date()
        )
        TransactionActivityItem(
            mode: .in,
            subject: "Jason",
            action: "paid",
            object: "you",
            actionDesc: "get back",
            value: 196.00,
            date: Date()
        )
        TransactionActivityItem(
            mode: .out,
            subject: "John",
            action: "added",
            object: "\"Category\"",
            actionDesc: "owed",
            value: 196.00,
            date: Date()
        )
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
}
