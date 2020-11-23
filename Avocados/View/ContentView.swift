//
//  ContentView.swift
//  Avocados
//
//  Created by Jonathan Sweeney on 11/10/20.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var headers: [Header] = headerData
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }//: HSTK
                }//: SCROLL
                
                // MARK: - DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()

                
                // MARK: - FOOTER

                VStack {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }//: VSTACK - FTR
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }//: VSTK
        }//: SCROLL
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }//: BODY
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.system(.title, design: .serif))
        .foregroundColor(Color("ColorGreenAdaptive"))
        .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headerData)
    }
}
