//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by Supannee Mutitanon on 23/5/20.
//  Copyright © 2020 Supannee Mutitanon. All rights reserved.
//

import SwiftUI

public class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🤡"]
        return MemoryGame<String>(numberOfPairsOfCards: 2) { parisIndex in
            return emojis[parisIndex]
        }
    }
    //MARK: - Access to the model
    var card: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
