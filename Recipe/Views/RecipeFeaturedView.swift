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
        Text("Featured View!!!")
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
    }
}
