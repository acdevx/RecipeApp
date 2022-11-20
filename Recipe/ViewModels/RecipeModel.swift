//
//  RecipeModel.swift
//  Recipe
//
//  Created by Amadou Camara on 11/13/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes: [Recipe] = []
    
    init(){
        // create an instance o data dervice and get th data
        self.recipes = DataService.getLocalData()
    }
}
