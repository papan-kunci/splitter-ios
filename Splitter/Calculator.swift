//
//  ContentView.swift
//  Splitter
//
//  Created by Nicolas Lukita on 2024/1/24.
//

import SwiftUI
import Combine

struct Calculator: View {
    @State private var bill: String = ""
    
    private let tipValues: [Double] = [0.05, 0.1, 0.15, 0.2]
    
    var body: some View {
        ZStack {
            ZStack(alignment: .top) {
                VStack {
                    Image(systemName: "globe")
                        .foregroundStyle(.tint)
                    Text("Ka-Ching!")
                    Text(bill)
                    Form {
                        TextField(
                            "$",
                            text: $bill
                        )
                        .keyboardType(.numberPad)
                        .onReceive(Just(bill)) { inputValue in
                            let filtered = inputValue.filter { "0123456789.".contains($0) }
                            if filtered != inputValue {
                                self.bill = filtered
                            }
                        }
                    }
                    VStack {
                        ForEach(tipValues, id: \.self) { percentage in
                            Button(
                                action: {
                                    if let billValue: Double = Double(self.bill) {
                                        self.bill = String(billValue + (billValue * percentage))
                                    }
                                }
                            ) {
                                Text("\(Int(percentage * 100))%")
                            }
                        }
                    }
                }
                .padding(.top, 30)
            }
            .frame(width: .infinity, height: .infinity)
            .background(Color(hex: "#F2F1F7").ignoresSafeArea())
            .cornerRadius(24)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.top, 30)
        .background(Color.teal.opacity(0.3).ignoresSafeArea())
    }
}

#Preview {
    Calculator()
}
