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
                
                
                // MARK: - FOOTER

                VStack {
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headerData)
    }
}
