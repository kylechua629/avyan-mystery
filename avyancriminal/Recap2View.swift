//
//  Recap2View.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI

struct Recap2View: View {
    @Binding var bindedTime: String
    @Binding var bindedWhere: String
    @Binding var bindedDate: String
    var body: some View {
        Text("Given the fact that the robbery was on \(bindedDate) at \(bindedTime) in \(bindedWhere), it is highly likely that Tall Avyan fled via...")
            .padding()
        Text("\(bindedWhere) avenue.")
            .fontWeight(.bold)
            .font(.system(size: 30))
    }
}

#Preview {
    Recap2View(bindedTime: .constant("12"), bindedWhere: .constant("12"), bindedDate: .constant("12"))
}
