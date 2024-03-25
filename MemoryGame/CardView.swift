//
//  CardView.swift
//  MemoryGame
//
//  Created by Shantalia Z on 3/21/24.
//

import SwiftUI

struct CardView: View {
    
    
    let card: Card

    
   // let card: Card // add this line
    @State private var isFaceUp: Bool = false  // tracks whether the card face is showing

    @State private var isMatched: Bool = false // tracks whether the card face is matching
    
    var body: some View {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//            .fill(Color.black.gradient)
//            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//            .frame(width: 100, height: 100)
        // if card matches with previously selected , pair is true
//        if isMatched{
//            Image(card.content) == card.self
//        }
        
        // start of body
                Group {
                    if isFaceUp {
                        // Show Image fit
                        Image(card.content)

                         
                    } else {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.black.gradient)
                            .shadow(radius: 10)
                            .frame(width: 100, height: 100)
                    }
                }
                .onTapGesture {
                    isFaceUp.toggle() // this toggles the isfaceup state, flipping the card.
                }
                // end of body
            }
        }
        

        


#Preview {
//    CardView(card: Card)
    // create an instance of card with dummy data for preview purposes
    CardView(card: Card(isFaceUp: true, isMatched: false, content: "BobaTeaDrink1"))
}
