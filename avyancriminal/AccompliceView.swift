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
        NavigationStack {
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
                    Text("Total accomplices: \(number)")
                        .fontWeight(.bold)
                    
                    Stepper("", value: $number, step: 1)
                        .padding()
                }
            }
            .navigationTitle("Accomplices")
            
            NavigationLink() {
                Recap3View(bindedAccomplice: $Accomplice, bindedOthers: $Else, completion: false)
            } label: {
                Text("Let's find them!")
            }
        }
    }
}


#Preview {
    AccompliceView()
}
