//
//  DetailView.swift
//  Recipe
//
//  Created by Amadou Camara on 11/16/22.
//

import SwiftUI

struct DetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        ScrollView {

            VStack(alignment: .leading) {
                
                //MARK: - Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                VStack(alignment: .leading){
                    //MARK: - Ingredients
                    Text("Ingredients")
                        .font(.title2)
                        .padding(.bottom, 1.5)
                    
                    ForEach(recipe.ingredients, id: \.self) { item in
                        Text("\u{2022} \(item)")
                            .padding(.bottom, 1.1)
                    }
                    
                    //MARK: - Directions
                    Text("Directions")
                        .font(.title2)
                        .padding(.bottom, 1.5)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        Text("\(index + 1)- \(recipe.directions[index])")
                    }
                }
                .padding(.horizontal)
            }
            
        }
        .navigationTitle(recipe.name)
        //.navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        // create a dummy recipe and pass it into the detail view so that we can see a preview
        let model = RecipeModel()
        
        DetailView(recipe: model.recipes[0])
    }
}
