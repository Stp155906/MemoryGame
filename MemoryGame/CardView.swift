//
//  CardView.swift
//  MemoryGame
//
//  Created by Shantalia Z on 3/21/24.
//

import SwiftUI


struct CardView: View {
    var card: Card

    var body: some View {
        GeometryReader { geometry in
            if card.isFaceUp {
                Image(uiImage: UIImage(named: card.content) ?? UIImage())
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}

        


//#Preview {
//    CardView(card: Card)
//}
