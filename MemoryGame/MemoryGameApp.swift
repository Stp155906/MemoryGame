import SwiftUI

@main
struct MemoryGameApp: App {
    // You might define cardContents somewhere here if it's constant
    let cardContents = ["BobaTeaDrink1", "BobaTeaDrink2", "BobaTeaDrink3", "BobaTeaDrink4"] // Replace with your actual image names

    var body: some Scene {
        WindowGroup {
            // Initialize the GameViewModel with the number of pairs and content factory
            let viewModel = GameViewModel(numberOfPairsOfCards: cardContents.count) { pairIndex in
                // This provides a content string for each card based on the pairIndex
                return cardContents[pairIndex % cardContents.count]
            }
            ContentView(viewModel: viewModel)
        }
    }
}

