//
//  ContentsView.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI

struct ContentsView: View {
    @Binding var bindedcompletion1: Bool
    @Binding var bindedcompletion2: Bool
    @Binding var bindedcompletion3: Bool
    var body: some View {
        NavigationStack {
            List {
                // section 1
                NavigationLink {
                    TimeView()
                } label: {
                    Text("SECTION #1 \nDate & Time of Incident")
                        .fontWeight(.bold)
                }
                .listRowBackground(Color.pink)
                .padding()
                .padding()
                // section 2
                NavigationLink {
                    AccompliceView()
                } label: {
                    Text("SECTION #2 \nRelated Persons")
                        .fontWeight(.bold)
                }
                .listRowBackground(Color.blue)
                .padding()
                .padding()
                // section 3
                NavigationLink {
                    MiscellaneousView()
                } label: {
                    Text("SECTION #3 \nMiscellaneous Information")
                        .fontWeight(.bold)
                }
                .listRowBackground(Color.teal)
                .padding()
                .padding()
                if bindedcompletion1 == true && bindedcompletion2 == true && bindedcompletion3 == true {
                    NavigationLink {
                        EndView()
                    } label: {
                        Text("SECTION #4 \n#*&%)!#*!#^$&@$^")
                            .fontWeight(.bold)
                    }
                    .listRowBackground(Color.cyan)
                    .padding()
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentsView(bindedcompletion1: .constant(false), bindedcompletion2: .constant(false), bindedcompletion3: .constant(false))
}
