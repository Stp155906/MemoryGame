//
//  Card.swift
//  MemoryGame
//
//  Created by Shantalia Z on 3/21/24.
//

import Foundation

struct Card: Identifiable {
    var id: Int
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var content: String // For simplicity, we’re using a String to represent the content. This could be an image name or any other type of identifier.
}


