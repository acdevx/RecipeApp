//
//  ContentView.swift
//  Recipe
//
//  Created by Amadou Camara on 11/13/22.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        NavigationView {
            List(model.recipes) { item in
                
                NavigationLink {
                    DetailView(recipe: item)
                } label: {
                    HStack(spacing: 20.0) {
                        Image(item.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80, alignment: .center)
                            .clipped()
                            .cornerRadius(10)
                        Text(item.name)
                    }
                }
            }
            .navigationTitle("All Recipes") 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
