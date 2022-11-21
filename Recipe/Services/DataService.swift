//
//  DataService.swift
//  Recipe
//
//  Created by Amadou Camara on 11/13/22.
//

import Foundation

class DataService {
    
    
    // Parse local JSON file
    static func getLocalData() -> [Recipe] {
        
        // Get a url path to the to the JSON file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil
        guard pathString != nil else {
            return []
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode data
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add unique IDs
                for item in recipeData {
                    item.id = UUID()
                    
                    // Add unique IDs to recipe ingredients
                    for ingredients in item.ingredients {
                        ingredients.id = UUID()
                    }
                }
                
                // Return the recipes
                return recipeData
            } catch {
                print(error.localizedDescription)
            }
            
        } catch  {
            print(error.localizedDescription)
        }
        
        return []
    }
}
