//
//  TimeView.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI

struct TimeView: View {
    @State var date: String = ""
    @State var time: String = ""
    @State var location: String = ""
    @State var am: String = "am"
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Text("Date:")
                        .fontWeight(.bold)
                    TextField(
                        "XX/XX/XXXX",
                        text: $date
                    )
                    .padding()
                }
                HStack {
                    Text("Time:")
                        .fontWeight(.bold)
                    TextField(
                        "XX.XX \(am)",
                        text: $time
                    )
                    .contextMenu {
                        Button("AM") {
                            am = "am"
                        }
                        Button("PM") {
                            am = "pm"
                        }
                    }
                    .padding()
                }
                HStack {
                    Text("Location:")
                        .fontWeight(.bold)
                    TextField(
                        "Required",
                        text: $location
                    )
                    .padding()
                }
            }
            .navigationTitle("When did it occur?")
            
            Spacer()
            NavigationLink() {
                Recap2View(bindedTime: $time, bindedWhere: $location, bindedDate: $date)
            } label: {
                Text("Triangulation!")
                }
            }
        }
    }


#Preview {
    TimeView()
}
