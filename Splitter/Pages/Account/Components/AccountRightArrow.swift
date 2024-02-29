//
//  AccountRightArrow.swift
//  Splitter
//
//  Created by Nicolas Lukita on 2024/2/26.
//

import SwiftUI

struct AccountRightArrow: View {
    var body: some View {
        Image(systemName: "chevron.right")
            .resizable()
            .frame(width: 7, height: 11)
            .foregroundColor(.gray)
            .opacity(0.5)
    }
}

#Preview {
    AccountRightArrow()
}
