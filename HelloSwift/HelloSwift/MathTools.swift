//
//  MathTools.swift
//  HelloSwift
//
//  Created by Krystian Duma on 13/11/2019.
//  Copyright © 2019 Krystian Duma. All rights reserved.
//

import Foundation



class MathTools {

    public func fibonacci(_ i: Int) -> Int {
        if i == 0 {
            return 0
        }

        if i < 3 {
            return 1
        }

        return fibonacci(i-1) + fibonacci(i-2)
    }
}
