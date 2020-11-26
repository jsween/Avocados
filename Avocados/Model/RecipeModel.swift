//
//  RecipeModel.swift
//  Avocados
//
//  Created by Jonathan Sweeney on 11/25/20.
//

import Foundation

// MARK: - Recipe Model

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}

