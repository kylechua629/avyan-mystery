//
//  MiscellaneousView.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI

struct MiscellaneousView: View {
    @State var How: String = ""
    @State var total: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Text("How did Avyan steal INCoin?")
                        .fontWeight(.bold)
                    TextField(
                        "Type Here",
                        text: $How
                    )
                    .padding()
                }
                HStack {
                    Text("Total Stolen: ")
                        .fontWeight(.bold)
                    TextField(
                        "$XXXXXX",
                        text: $total
                    )
                    .padding()
                }
            }
            .navigationTitle("Details of the Incident")
            
            NavigationLink {
                RecapView(bindedTotal: $How, bindedHow: $total, completion: false)
            } label: {
                Text("Let's Get It Back!")
            }
        }
    }
}

#Preview {
    MiscellaneousView()
}
