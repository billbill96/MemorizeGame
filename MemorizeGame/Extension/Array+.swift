//
//  Array+.swift
//  MemorizeGame
//
//  Created by Supannee Mutitanon on 3/6/20.
//  Copyright © 2020 Supannee Mutitanon. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
