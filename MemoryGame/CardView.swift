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
            ZStack {
                if card.isFaceUp {
                    // Card is face up, show the image
                    Image(uiImage: UIImage(named: card.content) ?? UIImage())
                        .resizable()
                        .scaledToFit()
                } else {
                    // Card is face down, show a filled rectangle
                    if !card.isMatched {
                        RoundedRectangle(cornerRadius: 25).fill()
                    }
                }
                
                // If the card is matched, you could add a visual effect here, like a border or overlay
                if card.isMatched {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.purple.opacity(0.5)) // Example of making matched cards green
                }
            }
            .aspectRatio(2/3, contentMode: .fit)
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}



//#Preview {
//    CardView(card: Card)
//}
