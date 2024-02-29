//
//  AccountHeader.swift
//  Splitter
//
//  Created by Nicolas Lukita on 2024/2/26.
//

import SwiftUI

struct AccountHeader: View {
    let label: String
    var body: some View {
        HStack {
            Text(label)
                .font(.system(size: 14))
                .fontWeight(.medium)
            Spacer()
        }
        .frame(width: .infinity)
        .padding(.vertical, 14)
        .background(.white)
    }
}
#Preview {
    AccountHeader(label: "Headline")
}
