//
//  Recipe.swift
//  Recipe
//
//  Created by Amadou Camara on 11/13/22.
//

import Foundation

class Recipe: Identifiable, Codable {
    internal var id: UUID?
    internal var name: String
    internal var featured: Bool
    internal var image: String
    internal var description: String
    internal var prepTime: String
    internal var cookTime: String
    internal var totalTime: String
    internal var servings: Int
    internal var highlights: [String]
    internal var ingredients: [Ingredient]
    internal var directions: [String]
}

class Ingredient: Identifiable, Codable {
    internal var id: UUID?
    internal var name: String
    internal var num: Int?
    internal var denom: Int?
    internal var unit: String?
}
