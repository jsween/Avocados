//
//  RipeningModel.swift
//  Avocados
//
//  Created by Jonathan Sweeney on 11/25/20.
//

import Foundation

// MARK: - RIPENING MODEL

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

