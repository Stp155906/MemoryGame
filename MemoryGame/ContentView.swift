//
//  ContentView.swift
//  MemoryGame
//
//  Created by Shantalia Z on 3/21/24.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var viewModel: GameViewModel

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            viewModel.choose(card: card)
                        }
                }
            }
            .foregroundColor(.black)
        }
        .padding(.horizontal)
    }
}


//#Preview {
//    ContentView(viewModel: GameViewModel)
//}
