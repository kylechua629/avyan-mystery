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
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                HStack {
                    
                }
            }
        }
    }
}

#Preview {
    RecapView(bindedTotal: .constant("12"), bindedHow: .constant("12"))
}
