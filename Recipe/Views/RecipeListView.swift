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
            VStack(alignment: .leading) {
                
                Text("All Recipes")
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                    .padding(.top, 40.0)
                
                ScrollView {
                    LazyVStack (alignment: .leading) {
                        ForEach(model.recipes) { item in
                            
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
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .navigationBarHidden(true)
                    }
                }
            }
            .padding(.leading)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView().environmentObject(RecipeModel())
    }
}
