//
//  AccountListItem.swift
//  Splitter
//
//  Created by Nicolas Lukita on 2024/2/26.
//

import SwiftUI

struct AccountListItem: View {
    let label: String
    let icon: String
    let iconColor: Color?
    
    init(label: String, icon: String, iconColor: Color? = nil) {
        self.label = label
        self.icon = icon
        self.iconColor = iconColor
    }
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(iconColor != nil ? iconColor : .black)
            Text(label)
                .lineLimit(1)
                .truncationMode(.tail)
                .font(.system(size: 15))
                .padding(.leading, 10)
            Spacer()
            AccountRightArrow()
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    AccountListItem(label: "Get pro version", icon: "suit.diamond.fill", iconColor: .yellow)
}
