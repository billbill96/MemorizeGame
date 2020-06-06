//
//  Array+Only.swift
//  MemorizeGame
//
//  Created by Supannee Mutitanon on 6/6/20.
//  Copyright © 2020 Supannee Mutitanon. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
