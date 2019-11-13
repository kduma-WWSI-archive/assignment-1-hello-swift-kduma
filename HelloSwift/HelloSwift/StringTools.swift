//
//  StringTools.swift
//  HelloSwift
//
//  Created by Krystian Duma on 13/11/2019.
//  Copyright © 2019 Krystian Duma. All rights reserved.
//

import Foundation


class StringTools {
    public func countOccurrences (character: String, from string: String, caseSensitive isCaseSensitive: Bool = true) -> Int {
        var foundOccurrences = 0

        for char in string {
            if String(char).compare(character, options: isCaseSensitive ? [] : .caseInsensitive) == .orderedSame {
                foundOccurrences += 1
            }
        }

        return foundOccurrences
    }
}
