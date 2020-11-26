//
//  SettingsView.swift
//  Avocados
//
//  Created by Jonathan Sweeney on 11/10/20.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @State private var enableNotifications: Bool = true
    @State private var backgroundRefresh: Bool = false
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                // MARK: - Section 1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotifications) {
                        Text("Enable Settings")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }
                // MARK: - Section 2
                Section(header: Text("Application")) {
                    if enableNotifications {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Jon Sweeney")
                        }
                        HStack {
                            Text("website")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("jsween.com")
                        }
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundColor(.gray)
                            Spacer()
                                Text("Go Big Red")
                                    .foregroundColor(.red)
                                    .fontWeight(.bold)
                                    .font(.title)
                        }
                    }
                }

            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
