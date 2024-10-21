//
//  Recap3View.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI

struct Recap3View: View {
    @Binding var bindedAccomplice: String
    @Binding var bindedOthers: String
    @State var completion: Bool
    var body: some View {
        NavigationStack {
            Spacer()
            Text("If \(bindedAccomplice) help Tall Avyan in the crime, this means that we can follow their footsteps (Tall Avyan has big ones) and find them!! ")
                .padding()
                .font(.system(size: 20))
            Text("The Accomplices Include: \n\(bindedAccomplice)\n\(bindedOthers)")
                .navigationBarTitleDisplayMode(.inline)
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
                ContentsView(bindedcompletion1: $completion, bindedcompletion2: $completion, bindedcompletion3: !$completion)
            } label: {
                Text("Return to Contents")
                    .fontWeight(.bold)
            }
            
            Spacer()
        }
    }
}

#Preview {
    Recap3View(bindedAccomplice: .constant("12"), bindedOthers: .constant("12"), completion: false)
}
