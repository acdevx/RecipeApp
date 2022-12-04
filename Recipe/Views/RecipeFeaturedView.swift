//
//  RecipeFeaturedView.swift
//  Recipe
//
//  Created by Amadou Camara on 11/21/22.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Featured Recipe")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .padding(.leading)
            
            GeometryReader { geo in
                TabView {
                    ForEach(0 ..< model.recipes.count) { index in
                        if model.recipes[index].featured {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    
                                
                                VStack {
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text(model.recipes[index].name)
                                        .padding(5)
                                }
                            }
                            .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                            .cornerRadius(15)
                        .shadow(radius: 10)
                        .shadow(color: .black .opacity(0.5), radius: 10, x: -5, y: 5)
                                
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            }
            
            
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text("Preparation Time")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, Heraty")
            }
            .padding([.leading, .bottom])
            
        }
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
