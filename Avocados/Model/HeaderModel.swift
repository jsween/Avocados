//
//  HeaderModel.swift
//  Avocados
//
//  Created by Jonathan Sweeney on 11/22/20.
//

import Foundation

// MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}

