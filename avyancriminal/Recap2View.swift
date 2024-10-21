//
//  Recap2View.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI
extension Binding where Value == Bool {
    func negate() -> Bool {
        return !(self.wrappedValue)
    }
}
prefix func ! (value: Binding<Bool>) -> Binding<Bool> {
    Binding<Bool>(
        get: { !value.wrappedValue },
        set: { value.wrappedValue = !$0 }
    )
}

struct Recap2View: View {
    @Binding var bindedTime: String
    @Binding var bindedWhere: String
    @Binding var bindedDate: String
    @State var completion: Bool = false
    
    var body: some View {
        
        NavigationStack {
            Spacer()
            Text("Given the fact that the robbery was on \(bindedDate) at \(bindedTime) in \(bindedWhere), it is highly likely that Tall Avyan fled via...")
                .padding()
    
                .font(.system(size: 35))
            Text("\(bindedWhere) avenue.")
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
                ContentsView(bindedcompletion1: $completion, bindedcompletion2: !$completion,  bindedcompletion3: !$completion)
            } label: {
                Text("Return to Contents")
                    .fontWeight(.bold)
            }
            
            Spacer()
        }
    }
}

#Preview {
    Recap2View(bindedTime: .constant("12"), bindedWhere: .constant("12"), bindedDate: .constant("12"), completion: false)
}
