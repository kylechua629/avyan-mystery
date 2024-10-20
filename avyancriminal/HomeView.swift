//
//  ContentView.swift
//  Avyancriminalreal#2
//
//  Created by Joshua Sheen on 19/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
//            ZStack {
                NavigationStack {
                        ZStack {
                            
                            ZStack {
//                                RadialGradient(gradient: Gradient(colors: [Color.gray, Color.clear]),
//                                               center: .topLeading, startRadius: 100, endRadius: 400)
//                                    .blendMode(.screen)
//                                    .ignoresSafeArea()
//                                
//                                // Second radial gradient
//                                RadialGradient(gradient: Gradient(colors: [Color.white, Color.clear]),
//                                               center: .bottomTrailing, startRadius: 150, endRadius: 400)
//                                    .blendMode(.screen)
//                                    .ignoresSafeArea()
//                                
//                                // Third radial gradient
//                                RadialGradient(gradient: Gradient(colors: [Color.white, Color.clear]),
//                                               center: .center, startRadius: 0, endRadius: 400)
//                                    .blendMode(.screen)
//                                    .ignoresSafeArea()
//                                RadialGradient(gradient: Gradient(colors: [Color.white, Color.clear]),
//                                               center: .topLeading, startRadius: 120, endRadius: 400)
//                                    .blendMode(.screen)
//                                    .ignoresSafeArea()
                                LinearGradient(colors: [Color.orange,Color.green], startPoint: .top, endPoint: .bottom)
                                    .opacity(0.25)
                                    .ignoresSafeArea()
                                Rectangle()
                                    .cornerRadius(20)
                                    .frame(width: 270, height: 100)
                                    .position(x: 200, y: 90)
                                
                                
                                Text("INCoin Heist!")
                                    .fontWeight(.bold)
                                    .font(.system(size: 40))
                                    .position(x: 200, y: 90)
                                    .foregroundStyle(.white)
                                
                                NavigationLink {
                                    ContentsView()
                                }label: {
                                    ZStack {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .foregroundColor(.green)
                                            .frame(width: 200 , height: 75)
                                        Text("START!")
                                            .font(.system(size: 50, weight: .bold))
                                    }
                                    
                                }
                        
                        
                            }
                        }
                    }
                
        
                
                
                    
                
//            }
            .background(Color.black) // Dark background for better contrast
            .ignoresSafeArea()
        
        // start of code
        
        }
    }

    struct MeshGradientView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }


#Preview {
    HomeView()
}
