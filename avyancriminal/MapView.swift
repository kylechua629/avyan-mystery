//
//  MapView.swift
//  avyancriminal
//
//  Created by Kyle Henric Buguina Chua on 20/10/24.
//

import SwiftUI

struct MapView: View {
    @Binding var bindedLocation: String
    var body: some View {
        ZStack {
            Image("maps")
                .resizable()
                .frame(width: 500, height: 900)
                .ignoresSafeArea()
            Image(systemName: "arrowshape.right.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x: 40, y: 280)
            Image(systemName: "arrowshape.down.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x: 140, y: 170)
            Text("\(bindedLocation)") // make this the location and point it to the gas station thing
            // add a rectangle here but only to make it cover the size of the text :D
        }
    }
}

#Preview {
    MapView(bindedLocation: .constant("12"))
}
