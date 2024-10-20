//
//  Recap2View.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI

struct Recap2View: View {
    @Binding var bindedTime: String

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Recap2View(bindedTime: .constant("12"))
}
