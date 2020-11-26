//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Jonathan Sweeney on 11/25/20.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
        
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        VStack {
                            HStack {
                                Spacer()
                                Image(systemName: "bookmark")
                                    .font(Font.title.weight(.light))
                                    .foregroundColor(Color.white)
                                    .imageScale(.small)
                                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                    .padding(.trailing, 20)
                                    .padding(.top, 22)
                            }//:HSTK
                            Spacer()
                        }//:VSTK
                )
            }//:HSTK
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                //HEADLINE
                Text(recipe.headline)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                //RATING
                RecipeRatingView(recipe: recipe)
                //COOKING
                RecipeCookingView(recipe: recipe)
            }//:VSTK
            .padding()
            .padding(.bottom, 12)
        }//:VSTK
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal, content: {
            RecipeDetailView(recipe: recipe)
        })
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
