//
//  ContentView.swift
//  MemoryGame
//
//  Created by Shantalia Z on 3/21/24.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var viewModel: GameViewModel

    let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 10), count: 3) // Adjust 'count' as needed

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .padding(4) // Add padding to each card if needed
                        .onTapGesture {
                            viewModel.choose(card: card)
                        }
                }
            }
            .padding(.horizontal) // This adds padding on the left and right sides of the grid
        }
    }
}



//#Preview {
//    ContentView(viewModel: GameViewModel)
//}
