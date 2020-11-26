//
//  FactModel.swift
//  Avocados
//
//  Created by Jonathan Sweeney on 11/22/20.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String 
}
