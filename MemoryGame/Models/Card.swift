//
//  Card.swift
//  MemoryGame
//
//  Created by Shantalia Z on 3/21/24.
//

import Foundation

struct Card: Identifiable {
    var id = UUID()
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var content: String
}

