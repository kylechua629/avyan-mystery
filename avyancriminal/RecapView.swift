//
//  RecapView.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI

struct RecapView: View {

    @Binding var bindedTotal: String
    @Binding var bindedHow: String
    @State var completion: Bool
    var body: some View {
        NavigationStack {
            Spacer()
            Text("If Tall Avyan stole \(bindedTotal) by \(bindedHow), this shows that the price of INCoin dropped by...")
                .padding()
                .font(.system(size: 20))
                .navigationTitle("Let's Get This Back 🔥")
            Text("\(bindedTotal)")
                .fontWeight(.bold)
                .font(.system(size: 35))
            Toggle(isOn: $completion) {
                ZStack {
                    Rectangle()
                        .frame(width: 170, height: 60)
                        .cornerRadius(20)
                        .foregroundColor(Color.orange)
                    Text("Lock In Answers.\nAre You Sure?")
                        .fontWeight(.bold)
                }
            }
            .padding()
            Spacer()
            NavigationLink {
                ContentsView(bindedcompletion1: $completion, bindedcompletion2: $completion,  bindedcompletion3: $completion)
            } label: {
                Text("Return to Contents")
                    .fontWeight(.bold)
            }
            
            Spacer()
        }
    }
}

#Preview {
    RecapView(bindedTotal: .constant("12"), bindedHow: .constant("12"), completion: false)
}
