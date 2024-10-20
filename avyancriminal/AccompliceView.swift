//
//  AccompliceView.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI

struct AccompliceView: View {
    @State var Accomplice: String = ""
    @State var number: Int = 1
    @State var Else: String = ""
    var body: some View {
        List {
            HStack {
                Text("Accomplices:")
                    .fontWeight(.bold)
                TextField(
                    "Full Name",
                    text: $Accomplice
                )
                .padding()
            }
            HStack {
                Text("Others:")
                    .fontWeight(.bold)
                TextField(
                    "Full Name",
                    text: $Else
                )
                .padding()
            }
            HStack {
                Text("Total accomplices")
                    .fontWeight(.bold)
                Stepper("", value: $number, step: 1)
                .padding()
            }
        }
        .navigationTitle("Accomplices")
        
        TabView {
            Recap3View(bindedAccomplice: $Accomplice)
                .tabItem {
                    Image(systemName: "questionmark")
                    Text("Pop Quiz!")
                }
        }
    }
}

#Preview {
    AccompliceView()
}
