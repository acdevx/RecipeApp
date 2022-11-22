//
//  RecipeTabView.swift
//  Recipe
//
//  Created by Amadou Camara on 11/20/22.
//

import SwiftUI

struct RecipeTabView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        TabView {
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
