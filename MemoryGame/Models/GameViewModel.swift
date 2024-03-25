//
//  GameViewModel.swift
//  MemoryGame
//
//  Created by Shantalia Z on 3/25/24.
//
// separates the ui logic from the game logic, making your code cleaner and more manageable.

import SwiftUI

class GameViewModel: ObservableObject {
    @Published private(set) var cards: [Card]

    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> String) {
        cards = [Card]()
        // Initialize the array of cards with pairs and content provided by the cardContentFactory
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
    }

    // Function to handle the card selection logic
    func choose(card: Card) {
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }) {
            var chosenCard = cards[chosenIndex]
            chosenCard.isFaceUp.toggle()
            cards[chosenIndex] = chosenCard // Reassign the card to the array to trigger the view update
        }
    }



    
    // Shuffle the cards to start a new game
    func shuffleCards() {
        cards.shuffle()
    }
}



//#Preview {
//    GameViewModel(numberOfPairsOfCards: <#Int#>, cardContentFactory: <#(Int) -> String#>)
//}
