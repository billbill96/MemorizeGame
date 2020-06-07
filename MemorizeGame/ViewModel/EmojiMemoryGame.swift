//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by Supannee Mutitanon on 23/5/20.
//  Copyright © 2020 Supannee Mutitanon. All rights reserved.
//

import SwiftUI

public class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🤡", "😱"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { parisIndex in
            return emojis[parisIndex]
        }
    }
        
    //MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
