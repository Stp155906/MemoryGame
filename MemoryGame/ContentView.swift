//
//  ContentView.swift
//  MemoryGame
//
//  Created by Shantalia Z on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    
    // this initializes an array with your boba images, assuming you have 6 unique images named "bobateadrink1" to "bobateadrink6".
    
    let bobaimages = (1...6).map { "BobaTeaDrink\($0)" }
    var cards: [Card] = []
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    init() {
        // Assuming bobaImages is an array of Strings.
        let bobaImages = (1...6).map { "BobaTeaDrink\($0)" }
        cards = bobaImages.flatMap { image -> [Card] in
            [Card(content: image), Card(content: image)]
        }.shuffled()
    }

    
    
    
    var body: some View {
        VStack {
            

            LazyVGrid(columns: columns, content: {
                ForEach(cards) { card in CardView(card: card)
                }
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
